#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
docker push cimg/node:14.21
docker push cimg/node:14.21.2
docker push cimg/node:14.21-browsers
docker push cimg/node:14.21.2-browsers
docker push cimg/node:18.13
docker push cimg/node:18.13.0
docker tag cimg/node:18.13.0 cimg/node:lts
docker push cimg/node:lts
docker push cimg/node:18.13-browsers
docker push cimg/node:18.13.0-browsers
docker tag cimg/node:18.13.0-browsers cimg/node:lts-browsers
docker push cimg/node:lts-browsers
docker push cimg/node:19.4
docker push cimg/node:19.4.0
docker tag cimg/node:19.4.0 cimg/node:current
docker push cimg/node:current
docker push cimg/node:19.4-browsers
docker push cimg/node:19.4.0-browsers
docker tag cimg/node:19.4.0-browsers cimg/node:current-browsers
docker push cimg/node:current-browsers
