#!/bin/bash
set -x


oc new-build --name=demo-app --binary --docker-image=openjdk:latest -n trt
oc start-build demo-app -n trt --from-dir=.  --follow
oc new-app demo-app:latest -n trt
oc expose svc/demo-app -n trt
#oc create route edge demo-app --service=demo-app --cert=./wildcardocp.crt --key=./wildcardocp.key \
#    --hostname=$parameterA.<<dominio-ocp>> --insecure-policy=Redirect --ca-cert=./copelCA.pem --port=8080 -n trt


oc new-build --name=demo-app --binary --docker-image=openjdk:latest -n hmlg
oc start-build demo-app -n hmlg --from-dir=.  --follow
oc new-app demo-app:latest -n hmlg
oc expose svc/demo-app -n hmlg

oc new-build --name=demo-app --binary --docker-image=openjdk:latest -n prd
oc start-build demo-app -n prd --from-dir=.  --follow
oc new-app demo-app:latest -n prd
oc expose svc/demo-app -n prd


http://demo-app-trt.apps.ocp.somos.coop.br/swagger-ui.html
http://demo-app-hmlg.apps.ocp.somos.coop.br/swagger-ui.html
http://demo-app-prd.apps.ocp.somos.coop.br/swagger-ui.html