FROM nexus.cooperforte.coop:9090/nginx-openshift:latest
LABEL maintainer="Douglas Ramiro <douglas@cf.coop.br>"

COPY ./nginx.conf /etc/nginx/conf.d/

EXPOSE 8080
ENTRYPOINT ["nginx", "-g", "daemon off;"]


