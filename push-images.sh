#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
docker push cimg/node:19.3
docker push cimg/node:19.3.0
docker tag cimg/node:19.3.0 cimg/node:current
docker push cimg/node:current
docker push cimg/node:19.3-browsers
docker push cimg/node:19.3.0-browsers
docker tag cimg/node:19.3.0-browsers cimg/node:current-browsers
docker push cimg/node:current-browsers
