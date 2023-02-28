#!/bin/bash

NAME=nexus.cooperforte.coop:9091/cooperforte/nginx-openshift-tools:latest
docker build --network host -t $NAME .
echo $NAME
