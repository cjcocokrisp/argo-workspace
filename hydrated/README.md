# Manifest Hydration

To hydrate the manifests in this repository, run the following commands:

```shell
git clone https://github.com/cjcocokrisp/argo-workspace.git
# cd into the cloned directory
git checkout f85a2c45eea90b007e51f3211e6404f3c37f9f55
helm template . --name-template promoter-demo --namespace promoter --set replicas=3 --set "keyvalue=hello everyone!" --include-crds
```
