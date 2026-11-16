# Manifest Hydration

To hydrate the manifests in this repository, run the following commands:

```shell
git clone https://github.com/cjcocokrisp/argo-workspace.git
# cd into the cloned directory
git checkout 59328b6af76b89c21f0a92449f71a13353f81716
helm template . --name-template scs-test-app --namespace scs-testing --set replicas=1 --include-crds
```
