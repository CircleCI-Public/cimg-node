#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker push cimg/node:12.22.11
docker push cimg/node:12.22
docker push cimg/node:12.22.11-browsers
docker push cimg/node:12.22-browsers

docker push cimg/node:14.19.1
docker push cimg/node:14.19
docker push cimg/node:14.19.1-browsers
docker push cimg/node:14.19-browsers

docker push cimg/node:16.14.2
docker push cimg/node:16.14
docker push cimg/node:lts
docker push cimg/node:16.14.2-browsers
docker push cimg/node:16.14-browsers
docker push cimg/node:lts-browsers

docker push cimg/node:17.7.2
docker push cimg/node:17.7
docker push cimg/node:current
docker push cimg/node:17.7.2-browsers
docker push cimg/node:17.7-browsers
docker push cimg/node:current-browsers
