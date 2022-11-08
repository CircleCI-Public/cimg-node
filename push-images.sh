#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
docker push cimg/node:14.21
docker push cimg/node:14.21.1
docker push cimg/node:14.21-browsers
docker push cimg/node:14.21.1-browsers
docker push cimg/node:16.18
docker push cimg/node:16.18.1
docker push cimg/node:16.18-browsers
docker push cimg/node:16.18.1-browsers
docker push cimg/node:18.12
docker push cimg/node:18.12.1
docker tag cimg/node:18.12.1 cimg/node:lts
docker push cimg/node:lts
docker push cimg/node:18.12-browsers
docker push cimg/node:18.12.1-browsers
docker tag cimg/node:18.12.1-browsers cimg/node:lts-browsers
docker push cimg/node:lts-browsers
docker push cimg/node:19.0
docker push cimg/node:19.0.1
docker tag cimg/node:19.0.1 cimg/node:current
docker push cimg/node:current
docker push cimg/node:19.0-browsers
docker push cimg/node:19.0.1-browsers
docker tag cimg/node:19.0.1-browsers cimg/node:current-browsers
docker push cimg/node:current-browsers
