#!/bin/sh

# generate site
hugo

# beautify HTML (requires tidy on path)
find public -name '*.html' -type f -print -exec tidy -mq --doctype strict --tidy-mark no --wrap 0 --indent auto --indent-spaces 2 --quiet yes  '{}' \;

# sync build dir to S3 bucket
cd public || exit 1
aws s3 sync . "s3://ljs.dev"

# call CF invalidation
aws cloudfront create-invalidation --distribution-id "E2SUEH0WHUZ23Z" --paths "/*"

