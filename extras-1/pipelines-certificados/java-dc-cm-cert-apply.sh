#!/bin/bash
set -x



if [ -z "$3" ] 
then
   echo ""
   echo "Usage: $0 namespace deployment cm-certificate "
   exit 1 
fi

NS=$1
DC=$2
CM=$3


oc set volume deployments/$DC --add --name=$CM-ca-bundle -m /etc/pki/ca-trust/extracted/java -t configmap --configmap-name=$CM-ca-bundle --default-mode='0755' --overwrite -n $NS



