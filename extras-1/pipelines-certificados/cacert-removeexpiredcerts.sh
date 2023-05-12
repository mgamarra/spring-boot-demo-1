#!/bin/bash


\cp -rf cacerts cacerts.jks

FN=cacerts

ALIASES=`keytool -list -v -keystore $FN -storepass changeit | grep -i 'alias\|until' `

echo "$ALIASES" > aliases.txt

i=1
while read p; do
    if ! ((i % 2)); then
        arr_date+=("$p")
    else
        arr_cn+=("$p")
    fi
    i=$((i+1))
done < aliases.txt
i=0

for date_idx in $(seq 0 $((${#arr_date[*]}-1)));
do
    a_date=`echo ${arr_date[$date_idx]} | awk -F"until: " '{print $2}'`
    if [ `date +%s --date="$a_date"` -lt `date +%s` ];
    then
        echo "removing ${arr_cn[$i]} expired: $a_date"
        alias_name=`echo "${arr_cn[$i]}" | awk -F"name: " '{print $2}'`
        keytool -delete -alias "$alias_name" -keystore $FN -storepass changeit
        # quebrar a pipeline caso certificado esteja invalido
        # exit 1;
    fi
    i=$((i+1))
done

rm -rf aliases.txt

echo "Done."
