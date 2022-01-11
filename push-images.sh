#!/usr/bin/env bash

docker push cimg/node:12.22.9
docker push cimg/node:12.22
docker push cimg/node:12.22.9-browsers
docker push cimg/node:12.22-browsers

docker push cimg/node:14.18.3
docker push cimg/node:14.18
docker push cimg/node:14.18.3-browsers
docker push cimg/node:14.18-browsers

docker push cimg/node:16.13.2
docker push cimg/node:16.13
docker push cimg/node:lts
docker push cimg/node:16.13.2-browsers
docker push cimg/node:16.13-browsers
docker push cimg/node:lts-browsers

docker push cimg/node:17.3.1
docker push cimg/node:17.3
docker push cimg/node:current
docker push cimg/node:17.3.1-browsers
docker push cimg/node:17.3-browsers
docker push cimg/node:current-browsers
