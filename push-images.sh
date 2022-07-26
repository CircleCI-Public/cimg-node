#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
docker push cimg/node:18.5
docker push cimg/node:18.5.0
docker tag cimg/node:18.5.0 cimg/node:current
docker push cimg/node:current
docker push cimg/node:18.5-browsers
docker push cimg/node:18.5.0-browsers
docker tag cimg/node:18.5.0-browsers cimg/node:current-browsers
docker push cimg/node:current-browsers
