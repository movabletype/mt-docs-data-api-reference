#!/bin/sh

for v in v1 v2 v3 v4 v5 v6 v7; do \
  npx @redocly/cli build-docs src/openapi/${v}.yaml \
    --template src/openapi/data-api-redoc.hbs \
    --disableGoogleFont \
    --title "Movable Type Data API ${v}" \
    --templateOptions.metaDescription "Movable Type Data API ${v}" \
    --config redoc.config.yaml \
    --output docs/${v}.html; \
done

npm run format
