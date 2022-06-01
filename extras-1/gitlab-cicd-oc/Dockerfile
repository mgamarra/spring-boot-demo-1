#FROM alpine:3.14
FROM centos

RUN apk add openssh

#Instalando o bash
RUN apk add --no-cache bash

#Instalando o Git
RUN apk add git

RUN apk add curl

#Configurando o OC
COPY /arquivos/oc /usr/local/bin/oc
#Instalando o JQ
RUN curl -sLo jq https://github.com/stedolan/jq/releases/download/jq-1.6/jq-linux64 && chmod +x jq && mv jq /usr/local/bin

RUN chmod +x /usr/local/bin/*


#Instalando o Git
#RUN git config --global user.name userpipeline && \
#    git config --global user.email userpipeline@copel.coop.br && \
#    git config --global push.default simple
RUN git config --global push.default simple



RUN rm -rf /var/cache/apk/*
