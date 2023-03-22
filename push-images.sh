#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
docker push cimg/node:19.8
docker push cimg/node:19.8.1
docker tag cimg/node:19.8.1 cimg/node:current
docker push cimg/node:current
docker push cimg/node:19.8-browsers
docker push cimg/node:19.8.1-browsers
docker tag cimg/node:19.8.1-browsers cimg/node:current-browsers
docker push cimg/node:current-browsers
