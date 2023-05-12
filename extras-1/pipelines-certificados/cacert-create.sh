#!/bin/bash
set -x

# Verifica se o parâmetro foi informado
if [ -z "$1" ]; then
  echo "Por favor, informe o caminho da pasta como parâmetro."
  exit 1
fi


# Verifica o número de níveis da pasta
nivel=$(echo "$1" | tr '/' '\n' | wc -l)
if [ $nivel -ne 2 ]; then
  echo "A pasta informada deve estar no formato ocp/<<ambiente>>."
  exit 1
fi

BASE=$1

\cp -rf $BASE/cacerts cacerts


for x in $BASE/certificados/*; do 
    certalias="${x%.*}"
    certalias=${certalias,,}
    certalias=${certalias// /_}
    echo $x $certalias
    keytool -trustcacerts -keystore cacerts -storepass changeit -delete -alias $certalias -file $x -noprompt
    keytool -trustcacerts -keystore cacerts -storepass changeit -importcert -alias $certalias -file $x -noprompt
done

#for x in *.cer; do 
#    certalias="${x%.*}"
#    certalias=${certalias,,}
#    certalias=${certalias// /_}
#    echo $x $certalias
#    keytool -trustcacerts -keystore cacerts -storepass changeit -delete -alias $certalias -file $x -noprompt
#    keytool -trustcacerts -keystore cacerts -storepass changeit -importcert -alias $certalias -file $x -noprompt
#done


#for x in *.cer; do 
#    certalias="${x%.*}"
#    certalias=${certalias,,}
#    certalias=${certalias// /_}
#    echo $x $certalias
#    keytool -trustcacerts -keystore cacerts -storepass changeit -delete -alias $certalias -file $x -noprompt
#    keytool -trustcacerts -keystore cacerts -storepass changeit -importcert -alias $certalias -file $x -noprompt
#done
#
#
#for x in *.crt; do 
#    certalias="${x%.*}"
#    certalias=${certalias,,}
#    certalias=${certalias// /_}
#    echo $x $certalias
#    keytool -trustcacerts -keystore cacerts -storepass changeit -delete -alias $certalias -file $x -noprompt
#    keytool -trustcacerts -keystore cacerts -storepass changeit -importcert -alias $certalias -file $x -noprompt
#done
#
#
#for x in *.pem; do 
#    certalias="${x%.*}"
#    certalias=${certalias,,}
#    certalias=${certalias// /_}
#    echo $x $certalias
#    keytool -trustcacerts -keystore cacerts -storepass changeit -delete -alias $certalias -file $x -noprompt
#    keytool -trustcacerts -keystore cacerts -storepass changeit -importcert -alias $certalias -file $x -noprompt
#done



#https://gist.github.com/damkh/a4a0d74891f92b0285a3853418357c1e