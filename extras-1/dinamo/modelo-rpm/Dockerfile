FROM centos:7

ENV TLS_SETUP_ENABLED=
ENV DFENCE_PKCS11_IP=
ENV DFENCE_PKCS11_USER=
ENV HSM_DISABLE_LEGACY_OPERATIONS=


ADD dinamo-4.7.11-1.el7.centos.x86_64.rpm .
RUN ["/usr/bin/rpm", "--nosignature", "-i", "dinamo-4.7.11-1.el7.centos.x86_64.rpm"]
RUN ["/usr/bin/rm", "dinamo-4.7.11-1.el7.centos.x86_64.rpm"]

