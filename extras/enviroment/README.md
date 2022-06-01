oc create configmap enviroment --from-env-file=hmlg/configmap.properties -n hmlg


oc set env deployment/arrecadacao-api --from configmap/enviroment -n hmlg



oc get deployment -n hmlg | awk '{printf "oc set env deployment/%s --from configmap/enviroment -n hmlg \n", $1}' | bash


oc get ReplicationControllers -n hmlg | awk '{printf "oc delete ReplicationControllers/%s -n hmlg \n", $1}' | bash
oc get DeploymentConfigs -n hmlg | awk '{printf "oc delete DeploymentConfigs/%s -n hmlg \n", $1}' | bash

 oc get deployment -n hmlg | awk '{printf "oc set env dc/$ --from configmap/enviroment -n hmlg \n", $1}'  | bash