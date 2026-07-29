# Manifest Hydration

To hydrate the manifests in this repository, run the following commands:

```shell
git clone https://github.com/cjcocokrisp/argo-workspace.git
# cd into the cloned directory
git checkout 0e0f8d135c93796cc4c4b1b51e487a095de97bdd
helm template . --name-template operator-deployed-promotions --namespace testing-deploy --set replicas=2 --set "keyvalue=these promotions were done through argocd operator deployed instances of argocd and the gitops promoter" --include-crds
```
