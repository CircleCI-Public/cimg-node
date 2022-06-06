#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
docker push cimg/node:18.3
docker push cimg/node:18.3.0
docker tag cimg/node:18.3.0 cimg/node:current
docker push cimg/node:current
docker push cimg/node:18.3-browsers
docker push cimg/node:18.3.0-browsers
docker tag cimg/node:18.3.0-browsers cimg/node:current-browsers
docker push cimg/node:current-browsers
docker push cimg/node:16.15
docker push cimg/node:16.15.1
docker tag cimg/node:16.15.1 cimg/node:lts
docker push cimg/node:lts
docker push cimg/node:16.15-browsers
docker push cimg/node:16.15.1-browsers
docker tag cimg/node:16.15.1-browsers cimg/node:lts-browsers
docker push cimg/node:lts-browsers
docker push cimg/node:17.9
docker push cimg/node:17.9.1
docker push cimg/node:17.9-browsers
docker push cimg/node:17.9.1-browsers
