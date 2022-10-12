#!/bin/sh

for v in v1 v2 v3 v4; do \
  npx redoc-cli build src/openapi/${v}.json \
    --template src/openapi/data-api-redoc.hbs \
    --disableGoogleFont \
    --title "Movable Type Data API ${v}" \
    --templateOptions.metaDescription "Movable Type Data API ${v}" \
    --options.sortTagsAlphabetically=true \
    --output docs/${v}.html; \
done
