#!/usr/bin/env bash

curl --location --request POST \
  "https://circleci.com/api/v2/project/gh/JalexChen/cimg-node-dev/schedule" \
  --header "Circle-Token: $CIRCLE_TOKEN" \
  --header 'Content-Type: application/json' \
  --data-raw "$(cat schedule.json)"
