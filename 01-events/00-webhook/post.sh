#!/bin/bash

EP="webhook-$(minikube ip).nip.io"

echo $EP

curl -v -X POST ${EP}/notify -H 'Content-Type: application/json' -d '{ "message": { "id": "abc123", "name": "fred", "email": "fred@gmail.com" } }'
