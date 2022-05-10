#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker push cimg/node:12.13.1
docker push cimg/node:12.13
docker push cimg/node:12.13.1-browsers
docker push cimg/node:12.13-browsers

docker push cimg/node:14.19.2
docker push cimg/node:14.19
docker push cimg/node:14.19.2-browsers
docker push cimg/node:14.19-browsers

docker push cimg/node:16.15.0
docker push cimg/node:16.15
docker push cimg/node:16.15.0-browsers
docker push cimg/node:16.15-browsers

docker push cimg/node:18.1.0
docker push cimg/node:18.1
docker push cimg/node:18.1.0-browsers
docker push cimg/node:18.1-browsers
