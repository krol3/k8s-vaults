.PHONY: build shell help
.DEFAULT_GOAL := help

help:
	@echo  "help:              Instructions "

install-consul:
	helm install --namespace consul --name my-consul -f consul/values.yaml stable/consul

local-consul:
	kubectl port-forward service/my-consul 8500

install-vault:
	helm repo add incubator http://storage.googleapis.com/kubernetes-charts-incubator
	helm install --namespace vault --name vault-v1 --set vault.dev=true incubator/vault

local-vault:
	vault server -dev -dev-listen-address=0.0.0.0:8200 & http://localhost:8200/ui/vault/secrets
	export VAULT_ADDR='http://0.0.0.0:8200'

info-vault:
	vault status

setting-app:
	bash setup-k8s-auth.sh