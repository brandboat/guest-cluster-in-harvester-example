# Introduction

This repo demos how to create cluster on top of harvester. In other words, you could use virtual machine to start the RKE2 cluster in the virtual machine of harvester on Rancher. 

![image](https://github.com/Yu-Jack/guest-cluster-in-harvester-example/assets/6960289/81e6d5d3-b04e-46a4-9ca2-3525d7daedfc)

More detail about this, please see [Harvester Node Driver](https://docs.harvesterhci.io/v1.2/rancher/node/node-driver/).

# Import Example


```sh
# harvester cloud credential
terraform import rancher2_cloud_credential.harvesterkvm "cattle-global-data:cc-xxxxx.harvester"

# guest cluster
terraform import module.guest_cluster.rancher2_cluster_v2.rancher_guest_cluster fleet-default/local-test
```
