# Manifest Hydration

To hydrate the manifests in this repository, run the following commands:

```shell
git clone https://github.com/cjcocokrisp/argo-workspace.git
# cd into the cloned directory
git checkout b18d1da8bef6e0bd03a5d336b3a7c6423dba3506
helm template . --name-template test-app --namespace default --set replicas=2 --set "keyvalue=this will be promoted" --include-crds
```
