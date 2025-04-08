#!/bin/bash
clear
echo
echo

k get ar/api-ro-5c6544fdd7-2-4 -napi -ocustom-columns='NAME:metadata.name,COUNT:status.metricResults[?(@.name=="success")].count,SUCCESS:status.metricResults[?(@.name=="success")].successful,CONSECUTIVE_SUCCESS:status.metricResults[?(@.name=="success")].consecutiveSuccess'
