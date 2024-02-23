#!/bin/bash

curl -X POST webhook-192.168.39.119.nip.io/notify -H 'Content-Type: application/json' -d '{ "message": { "id": "abc123", "name": "fred", "email": "fred@gmail.com" } }'

