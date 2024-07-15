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


2024-06-03; analise resolucao alertast https://0lo4.monops.cloud/grafana/d/e5KUfUCVz/painel-de-servico-v2?orgId=1&refresh=10s&from=now-1h&to=now
2024-06-04; analise resolucao alertast https://0lo4.monops.cloud/grafana/d/e5KUfUCVz/painel-de-servico-v2?orgId=1&refresh=10s&from=now-1h&to=now
2024-06-05; análise falha conexão servidor DS-PRD-OPENSHIFT-01
2024-06-06; análise falha conexão servidor DS-PRD-OPENSHIFT-01; atendimento TK292922
2024-06-07; análise falha conexão servidor DS-PRD-OPENSHIFT-01; atendimento TK290058

2024-06-10; atuação indisponibilidade cluster PRD, 
2024-06-11; atuação indisponibilidade cluster PRD, Carla Francisco
2024-06-12; atuação indisponibilidade cluster PRD;indisponibildade concedidos
2024-06-13; bp-elr-prd atuação indisponibilidade bp-elr-prd em PRD, atendimento tk172662
2024-06-14; atendimento tk172662, tk172707 e TK293499, atuacao indisponibildade concedidos

2024-06-17; atendimento TK293499, indisponibildade concedidos
2024-06-18; acompanhamento execucao jobs concedidos
2024-06-19; levantamento de permissoes econfiguração acessos usuário aos openshift prd e uat
2024-06-20; levantamento de permissoes econfiguração acessos usuário aos openshift prd e uat
2024-06-21; configuração acessos usuário aos openshift prd e uat

2024-06-24; atendimento tk294735
2024-06-25; atendimento tk294735
2024-06-26; atendimento tk295703 configuração acessos Mateus Teixeira Ponce de Leon PRD
2024-06-27; atendimento tk295703 e TK295803, acompanhamento primeiro acesso, redeploy paymetn-service Gustava Souza
2024-06-28; atendimento tk295703 configuração acessos Mateus Teixeira Ponce de Leon UAT, acompanhamento 
