#!/bin/bash
helm install prometheus-stack prometheus-community/kube-prometheus-stack \
  -nmonitoring --create-namespace 
