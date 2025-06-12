#!/bin/bash
k apply -f ./namespace.yaml

# Get the latest files
curl -o ./rollout-install.yaml -L --remote-name-all https://github.com/argoproj/argo-rollouts/releases/latest/download/install.yaml
curl -o ./dashboard-install.yaml -L --remote-name-all https://github.com/argoproj/argo-rollouts/releases/latest/download/dashboard-install.yaml

echo "Install Argo Rollouts"
k apply -f ./rollout-install.yaml -nargo-rollouts

echo "Install Argo Rollouts dashboard"
k apply -f ./dashboard-install.yaml -nargo-rollouts
