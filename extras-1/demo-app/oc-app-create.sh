#!/bin/bash
set -x

helpFunction()
{
   echo ""
   echo "Usage: $0 parameterA "
   exit 1 # Exit script after printing help
}


# Print helpFunction in case parameters are empty
if [ -z "$1" ] 
then
   echo "Some or all of the parameters are empty";
   helpFunction
fi

APP_NAME=$1


oc new-build --name=$APP_NAME --binary --strategy=docker -n trt
oc start-build $APP_NAME -n trt --from-dir=.  --follow
oc new-app $APP_NAME:latest -n trt
oc expose svc/$APP_NAME -n trt


oc new-build --name=$APP_NAME --binary --strategy=docker -n hmlg
oc start-build $APP_NAME -n hmlg --from-dir=.  --follow
oc new-app $APP_NAME:latest -n hmlg
oc expose svc/$APP_NAME -n hmlg

oc new-build --name=$APP_NAME --binary --strategy=docker -n prd
oc start-build $APP_NAME -n prd --from-dir=.  --follow
oc new-app $APP_NAME:latest -n prd
oc expose svc/$APP_NAME -n prd

