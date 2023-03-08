#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
docker push cimg/node:18.15
docker push cimg/node:18.15.0
docker tag cimg/node:18.15.0 cimg/node:lts
docker push cimg/node:lts
docker push cimg/node:18.15-browsers
docker push cimg/node:18.15.0-browsers
docker tag cimg/node:18.15.0-browsers cimg/node:lts-browsers
docker push cimg/node:lts-browsers
