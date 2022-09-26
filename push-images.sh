#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
docker push cimg/node:16.17
docker push cimg/node:16.17.1
docker tag cimg/node:16.17.1 cimg/node:lts
docker push cimg/node:lts
docker push cimg/node:16.17-browsers
docker push cimg/node:16.17.1-browsers
docker tag cimg/node:16.17.1-browsers cimg/node:lts-browsers
docker push cimg/node:lts-browsers
docker push cimg/node:18.9
docker push cimg/node:18.9.1
docker tag cimg/node:18.9.1 cimg/node:current
docker push cimg/node:current
docker push cimg/node:18.9-browsers
docker push cimg/node:18.9.1-browsers
docker tag cimg/node:18.9.1-browsers cimg/node:current-browsers
docker push cimg/node:current-browsers
docker push cimg/node:14.20
docker push cimg/node:14.20.1
docker push cimg/node:14.20-browsers
docker push cimg/node:14.20.1-browsers
