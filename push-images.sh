#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
docker push cimg/node:18.8
docker push cimg/node:18.8.0
docker tag cimg/node:18.8.0 cimg/node:current
docker push cimg/node:current
docker push cimg/node:18.8-browsers
docker push cimg/node:18.8.0-browsers
docker tag cimg/node:18.8.0-browsers cimg/node:current-browsers
docker push cimg/node:current-browsers
