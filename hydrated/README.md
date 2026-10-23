# Manifest Hydration

To hydrate the manifests in this repository, run the following commands:

```shell
git clone https://github.com/cjcocokrisp/argo-workspace.git
# cd into the cloned directory
git checkout 2313f64c3e9eb18d91074d817a412702322d22b3
helm template . --name-template tcs-test-app --namespace tcs-testing --set replicas=1 --include-crds
```
