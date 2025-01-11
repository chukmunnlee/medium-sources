#!/bin/bash 
k apply -f https://github.com/kubernetes-sigs/gateway-api/releases/download/v1.2.1/standard-install.yaml
k apply -f https://raw.githubusercontent.com/traefik/traefik/v3.3/docs/content/reference/dynamic-configuration/kubernetes-gateway-rbac.yml

helm repo update

helm install traefik traefik/traefik -ntraefik --create-namespace -f ./values.yaml
