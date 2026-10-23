# Manifest Hydration

To hydrate the manifests in this repository, run the following commands:

```shell
git clone https://github.com/cjcocokrisp/argo-workspace.git
# cd into the cloned directory
git checkout 651054b3b22034c82b1956c0737fe6375f2d465e
helm template . --name-template tcs-test-app --namespace tcs-testing --set replicas=1 --include-crds
```
