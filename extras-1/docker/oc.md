
oc new-build --name=hfsa --binary --strategy=docker -n cdn
oc start-build hfsa -n cdn --from-dir=.  --follow
oc new-app hfsa:latest -n cdn
oc set env deployment/hfsa --from configmap/enviroment -n hmlg
oc expose svc/hfsa -n cdn

oc create route edge hfsa --service=hfsa