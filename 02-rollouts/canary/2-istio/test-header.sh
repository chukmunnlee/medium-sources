#!/bin/bash
echo "Without X-Version header"
curl -XGET -H 'Host: api-192.168.39.35.nip.io'  192.168.39.35/api/data

echo 
echo "With X-Version header"
curl -XGET -H 'Host: api-192.168.39.35.nip.io' -H 'X-Version: v2' 192.168.39.35/api/data
