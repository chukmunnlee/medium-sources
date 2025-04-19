#!/bin/sh
URL="${1:-http://localhost:3000/api/data}"
DUR="${2:-30s}"
EXP_AVAIL="${3:-99}"

echo "DURATION=${DUR}\nURL=${URL}\nEXPECTED_AVAIL=${EXP_AVAIL}"

AVAIL="$(siege -c2 --delay=5 --time=${DUR} ${URL} | jq '.availability')"
echo "AVAILABILITY = ${AVAIL}"
IFS="."
set $AVAIL
IFS=" "
if [ "$1" -ge "${EXP_AVAIL}" ]; then
  exit 0
else
  exit 1
fi

