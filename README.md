# spring-boot-demo-1

oc patch -n <project-name> <object-kind>/<object-name> --type=merge -p '{"metadata": {"finalizers":null}}'


curl -k -H "Content-Type: application/json" -X PUT --data-binary @tmp.json http://127.0.0.1:8001/api/v1/namespaces/${PROJECT_NAME}/finalize


https://access.redhat.com/solutions/4165791
