#!/bin/bash
echo 
echo 
k get httproutes/api-httproute -napi \
  -o custom-columns="NAME:.metadata.name,BACKENDREFS:.spec.rules[*].backendRefs[*].name,WEIGHTS:.spec.rules[*].backendRefs[*].weight"
