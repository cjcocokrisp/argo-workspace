# Manifest Hydration

To hydrate the manifests in this repository, run the following commands:

```shell
git clone https://github.com/cjcocokrisp/argo-workspace.git
# cd into the cloned directory
git checkout cd9bde47ebfab7227b5ae24ef2b8f313259a4a17
helm template . --name-template tcs-test-app --namespace tcs-testing --set replicas=1 --include-crds
```
