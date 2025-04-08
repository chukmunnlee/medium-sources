#!/bin/bash
export EP="api-192.168.39.201.nip.io/api/data"
while :; do
  sleep $((1 + SRANDOM % 5))
  curl -sS $EP | jq
done
