FROM adoptopenjdk/openjdk8:alpine-slim

RUN apk add openssh

#Instalando o bash
RUN apk add --no-cache bash

#Instalando o Git
RUN apk add git

RUN apk add curl

#Instalando o Maven
RUN curl -sL https://downloads.apache.org/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz | tar -xzvC /opt && \
    ln -sf /opt/apache-maven-3.6.3 /opt/maven

#Instalando o JQ
RUN curl -sLo jq https://github.com/stedolan/jq/releases/download/jq-1.6/jq-linux64 && chmod +x jq && mv jq /usr/local/bin

RUN chmod +x /usr/local/bin/*


#Instalando o Git
#RUN git config --global user.name userpipeline && \
#    git config --global user.email userpipeline@copel.coop.br && \
#    git config --global push.default simple
RUN git config --global push.default simple


#Configurando maven
COPY arquivos/settings.xml /opt/maven/conf/settings.xml
COPY arquivos/settings.xml /opt/maven/settings.xml

#Criando diretório .m2
RUN mkdir /root/.m2
COPY arquivos/settings.xml /root/.m2/settings.xml


#Forçando o load das variaveis de ambient
#ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk
ENV M2_HOME=/opt/maven
ENV PATH=$PATH:$M2_HOME/bin


#RUN apk del curl
#RUN apk del openssh
RUN rm -rf /var/cache/apk/*

# ENV JAVA_HOME=/opt/java/openjdk \
#     PATH="/opt/java/openjdk/bin:$PATH"