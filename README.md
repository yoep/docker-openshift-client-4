# Docker OpenShift Client 4

[![](https://images.microbadger.com/badges/image/yoep/openshift-client-4.svg)](https://microbadger.com/images/yoep/openshift-client-4)
[![](https://images.microbadger.com/badges/version/yoep/openshift-client-4.svg)](https://microbadger.com/images/yoep/openshift-client-4)

Docker image containing the latest 4.X OpenShift client which can be used in deployment
pipelines such as Bitbucket Pipelines.

## Configure Bitbucket Pipelines

Use the following command in a Bitbucket Pipelines script to configure the OC client.

    - oc config set-credentials deployer --token=${API_TOKEN}
    - oc config set-cluster [my-cluster] --server=https://${SERVER}:${SERVER_PORT}
    - oc config set-context cluster-deployer --cluster=[my-cluster] --namespace=${NAMESPACE} --user=deployer
    - oc config use-context cluster-deployer 
