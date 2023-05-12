#!/bin/bash
set -x



if [ -z "$2" ] 
then
   echo ""
   echo "Usage: $0 namespace cm-name "
   exit 1 
fi


NS=$1
CM=$2


oc delete configmaps $CM-ca-bundle -n $NS --ignore-not-found=true
oc create configmap $CM-ca-bundle -n $NS --from-file=cacerts


