#!/bin/bash
k apply -f namespace.yaml
k apply -f argocd-install.yaml -nargocd
#k apply -f argo-server-ingress.yaml
