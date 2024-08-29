#!/bin/bash
helm repo update && \
	helm install kube-prom-graf prometheus-community/kube-prometheus-stack -nmonitoring --create-namespace -f ./values.yaml
