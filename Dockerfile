FROM frolvlad/alpine-glibc

ENV OC_VERSION "4.2"

# install additional libs
RUN apk update && apk upgrade && \
  apk add bash bash-completion tar

# download the latest oc client
ADD https://mirror.openshift.com/pub/openshift-v4/clients/oc/${OC_VERSION}/linux/oc.tar.gz /opt/oc/oc.tar.gz
RUN tar -xvzf /opt/oc/oc.tar.gz -C /opt/oc/ && \
  chmod 777 /opt/oc/oc && \
  mv /opt/oc/oc /usr/bin && \
  rm -f /opt/oc/*

LABEL org.label-schema.schema-version="1.0" \
    org.label-schema.name="yoep/openshift-client-4" \
    org.label-schema.description="Docker image with OpenShift client 4.X" \
    org.label-schema.vcs-url="https://github.com/yoep/docker-openshift-client-4"
