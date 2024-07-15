# spring-boot-demo-1

oc patch -n <project-name> <object-kind>/<object-name> --type=merge -p '{"metadata": {"finalizers":null}}'


curl -k -H "Content-Type: application/json" -X PUT --data-binary @tmp.json http://127.0.0.1:8001/api/v1/namespaces/${PROJECT_NAME}/finalize


https://access.redhat.com/solutions/4165791


https://docs.openshift.com/container-platform/4.8/logging/cluster-logging-deploying.html#cluster-logging-deploy-cli_cluster-logging-deploying


34s         Normal    ScalingReplicaSet     deployment/elasticsearch-cdm-mbdm036x-3                            Scaled up replica set elasticsearch-cdm-mbdm036x-3-5479d48fdb to 1
4s          Warning   ProvisioningFailed    persistentvolumeclaim/elasticsearch-elasticsearch-cdm-mbdm036x-1   Failed to provision volume with StorageClass "thin": unable to find node bpocp-ttmft-master-0: No VM found
3s          Warning   ProvisioningFailed    persistentvolumeclaim/elasticsearch-elasticsearch-cdm-mbdm036x-2   Failed to provision volume with StorageClass "thin": unable to find node bpocp-ttmft-master-0: No VM found
3s          Warning   ProvisioningFailed    persistentvolumeclaim/elasticsearch-elasticsearch-cdm-mbdm036x-3   Failed to provision volume with StorageClass "thin": unable to find node bpocp-ttmft-master-0: No VM found



 mkdir $(TZ="GMT-2" date +"%Y-%m-%d")
echo -e  '#!/bin/bash\n' > t-01.sh && chmod +x *sh
