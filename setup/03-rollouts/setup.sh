#!/bin/bash
k apply -f ./namespace.yaml

echo "Install Argo Rollouts"
k apply -f ./rollout-install.yaml -nargo-rollouts

echo "Install Argo Rollouts dashboard"
#k apply -f ./dashboard-install.yaml -nargo-rollouts
k apply -f ./dashboard-install.yaml -nargo-rollouts
