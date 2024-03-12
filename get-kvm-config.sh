# Generate harvester cloud provider kubeconfig
RANCHER_SERVER_URL="https://192.168.100.1:6443"
RANCHER_ACCESS_KEY=
RANCHER_SECRET_KEY=
HARVESTER_CLUSTER_ID=
CLUSTER_NAME=
curl -k -X POST ${RANCHER_SERVER_URL}/k8s/clusters/${HARVESTER_CLUSTER_ID}/v1/harvester/kubeconfig \
   -H 'Content-Type: application/json' \
   -u ${RANCHER_ACCESS_KEY}:${RANCHER_SECRET_KEY} \
   -d '{"clusterRoleName": "harvesterhci.io:cloudprovider", "namespace": "default", "serviceAccountName": "'${CLUSTER_NAME}'"}' | xargs | sed 's/\\n/\n/g' > ${CLUSTER_NAME}-kubeconfig
