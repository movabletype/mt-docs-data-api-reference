#!/bin/sh

for v in v1 v2 v3 v4 v5; do \
  curl -s http://192.168.58.25/cgi-bin/mt/mt-data-api.cgi/${v}/ | jq -S . > src/openapi/${v}.json;  \
done
