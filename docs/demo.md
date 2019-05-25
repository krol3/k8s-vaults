# Demo steps

1. minikube start

kubectl logs -f vault-agent-example --container consul-template

2. expose vault service: make svc-vault

3.

export VAULT_ADDR='http://0.0.0.0:8200'

kubectl -n vault logs -f vault-v1-vault-6d99ccfd96-x8nln

vault login s.1hVYH5MjHWqFU2xU7hZs40w0

4. make setting-vault-app

5. make setting-k8s-app

kubectl get pods

6. make svc-k8s-app

7. curl http://localhost:8080

vault kv get secret/myapp/config
