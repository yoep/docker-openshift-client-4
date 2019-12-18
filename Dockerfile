FROM alpine

# install additional libs
RUN apk update && apk upgrade && \
  apk add bash bash-completion tar wget

# download the latest oc client
RUN wget "https://mirror.openshift.com/pub/openshift-v4/clients/oc/4.2/linux/oc.tar.gz" && \
  tar xvzf oc.tar.gz && \
  chmod +w oc && \
  mv oc /usr/bin

LABEL org.label-schema.schema-version="1.0" \
    org.label-schema.name="yoep/openshift-client-4" \
    org.label-schema.description="Docker image with OpenShift client 4.X" \
    org.label-schema.vcs-url="https://github.com/yoep/docker-openshift-client-4"
