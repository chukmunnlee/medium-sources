#!/bin/bash

curl -X POST localhost:12000/notify -H 'Content-Type: application/json' -d '{ "message": { "id": "abc123", "name": "fred", "email": "fred@gmail.com" } }'
