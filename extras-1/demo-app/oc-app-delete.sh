#!/bin/bash

set -x

helpFunction()
{
   echo ""
   echo "Usage: $0 ambiente aplicacao "
   exit 1 # Exit script after printing help
}

if [ -z "$2" ] 
then
   helpFunction
fi

AMBIENTE=$1
APP=$2


oc delete cm $APP-config.map -n $AMBIENTE
oc delete route $APP -n $AMBIENTE
oc delete service $APP -n $AMBIENTE
oc delete dc $APP -n $AMBIENTE
oc delete deployments $APP -n $AMBIENTE


oc delete bc $APP -n $AMBIENTE
oc delete is $APP -n $AMBIENTE


pods=$( oc get pods -n $AMBIENTE | grep $APP | awk -F " " '{print $1}' )
for pod in $pods;
do
    kubectl delete pod $pod --force -n $AMBIENTE
done


