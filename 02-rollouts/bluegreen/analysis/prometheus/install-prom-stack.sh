#!/bin/bash
helm repo update
helm install prometheus prometheus-community/kube-prometheus-stack \
  -nmonitoring --create-namespace 
