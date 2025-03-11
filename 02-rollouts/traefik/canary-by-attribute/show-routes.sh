#!/bin/bash
k get httproute/api-httproute -napi \
  -ocustom-columns="NAME:.metadata.name ,BACKENDREFS:.spec.rules[*].backendRefs[*].name,WEIGHTS:.spec.rules[*].backendRefs[*].weight"
