#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
docker push cimg/node:20.4
docker push cimg/node:20.4.0
docker tag cimg/node:20.4.0 cimg/node:current
docker push cimg/node:current
docker push cimg/node:20.4-browsers
docker push cimg/node:20.4.0-browsers
docker tag cimg/node:20.4.0-browsers cimg/node:current-browsers
docker push cimg/node:current-browsers
docker push cimg/node:18.16
docker push cimg/node:18.16.1
docker tag cimg/node:18.16.1 cimg/node:lts
docker push cimg/node:lts
docker push cimg/node:18.16-browsers
docker push cimg/node:18.16.1-browsers
docker tag cimg/node:18.16.1-browsers cimg/node:lts-browsers
docker push cimg/node:lts-browsers
