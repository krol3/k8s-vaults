## Using hashicorp

make local-vault

#### Basic commands

make info-vault

vault operator unseal

### Demo steps

1- Create a Kubernetes Service Account

```
kubectl apply -f vault-auth-sa

kubectl get sa vault-auth -o yaml

kubectl get sa vault-auth -o jsonpath="{.secrets[\*]['name']}"
```

2- Run the setup-k8s-auth.sh script to set up the kubernetes auth method on your Vault server

`bash setup-k8s-auth.sh`

3- Deploy pod, set the correct VAULT_ADDR

- Create a ConfigMap, example-vault-agent-config
  `kubectl create configmap example-vault-agent-config --from-file=./configs-k8s/`

- View the created ConfigMap
  `kubectl get configmap example-vault-agent-config -o yaml`

- Deploy pod
  `kubectl apply -f pod-example.yml --record`

4- Validation
`kubectl port-forward pod/vault-agent-example 8080:80`

`kubectl exec -it vault-agent-example sh`