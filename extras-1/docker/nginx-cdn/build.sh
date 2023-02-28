#!/bin/bash

NAME=nexus.cooperforte.coop:9091/cooperforte/cdn-nginx:latest
docker build --network host -t $NAME .
echo $NAME
