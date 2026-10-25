# Manifest Hydration

To hydrate the manifests in this repository, run the following commands:

```shell
git clone https://github.com/cjcocokrisp/argo-workspace.git
# cd into the cloned directory
git checkout 0a0fe41e1e413a26fd34bd3452db734db73bc75a
helm template . --name-template tcs-test-app --namespace tcs-testing --set replicas=1 --include-crds
```
