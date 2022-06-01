#!/bin/bash

docker build -f Dockerfile --network host -t nexus.brb.com.br:6000/arq/gitlab-cicd-jdk:latest --no-cache .

# docker run -it nexus.brb.com.br:6000/arq/gitlab-cicd-jdk:latest /bin/bash

docker login -u sescoop nexus.brb.com.br:6000 -p 123
docker push nexus.brb.com.br:6000/arq/gitlab-cicd-jdk:latest