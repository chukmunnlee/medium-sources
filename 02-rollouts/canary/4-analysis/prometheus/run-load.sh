#!/bin/bash
export _DUR=${DURATION:-5}

echo "DURATION: ${_DUR}s"
echo "ENDPOINT: ${ENDPOINT}"

echo 
while :; do
  sleep $((1 + SRANDOM % ${_DUR:-5}))
  curl -sS $ENDPOINT | jq
done
