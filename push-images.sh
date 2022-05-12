#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker push cimg/node:16.15.0
docker push cimg/node:16.15
docker push cimg/node:lts
docker push cimg/node:16.15.0-browsers
docker push cimg/node:16.15-browsers
docker push cimg/node:lts-browsers

docker push cimg/node:18.1.0
docker push cimg/node:18.1
docker push cimg/node:current
docker push cimg/node:18.1.0-browsers
docker push cimg/node:18.1-browsers
docker push cimg/node:current-browsers
