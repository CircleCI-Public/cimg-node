#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
docker push cimg/node:14.21
docker push cimg/node:14.21.3
docker push cimg/node:14.21-browsers
docker push cimg/node:14.21.3-browsers
docker push cimg/node:16.19
docker push cimg/node:16.19.1
docker push cimg/node:16.19-browsers
docker push cimg/node:16.19.1-browsers
docker push cimg/node:18.14
docker push cimg/node:18.14.1
docker tag cimg/node:18.14.1 cimg/node:lts
docker push cimg/node:lts
docker push cimg/node:18.14-browsers
docker push cimg/node:18.14.1-browsers
docker tag cimg/node:18.14.1-browsers cimg/node:lts-browsers
docker push cimg/node:lts-browsers
docker push cimg/node:19.6
docker push cimg/node:19.6.1
docker tag cimg/node:19.6.1 cimg/node:current
docker push cimg/node:current
docker push cimg/node:19.6-browsers
docker push cimg/node:19.6.1-browsers
docker tag cimg/node:19.6.1-browsers cimg/node:current-browsers
docker push cimg/node:current-browsers
