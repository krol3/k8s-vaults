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
	helm install --namespace vault --name vault-v1 -f vault/values.yml incubator/vault

upgrade-vault:
	helm upgrade vault-v1 -f vault/values.yml incubator/vault

install-mariadb:
	helm install --namespace mariadb --name mdb-v1 --set rootUser.password=secretpassword,db.user=app_db stable/mariadb

local-vault:
	vault server -dev -dev-listen-address=0.0.0.0:8200 & http://localhost:8200/ui/vault/secrets

svc-vault:
	kubectl -n vault port-forward service/vault-v1-vault 8200

info-vault:
	vault status

setting-vault-app:
	bash setup-k8s-auth.sh

setting-k8s-app:
	kubectl apply -f pod-example.yml --record

svc-k8s-app:
	kubectl port-forward pod/vault-agent-example 8080:80