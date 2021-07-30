#!/usr/bin/env bash

docker build --file 12.22/Dockerfile -t cimg/node:12.22.4  -t cimg/node:12.22 .
docker build --file 12.22/browsers/Dockerfile -t cimg/node:12.22.4-browsers  -t cimg/node:12.22-browsers .
docker build --file 14.17/Dockerfile -t cimg/node:14.17.4  -t cimg/node:14.17  -t cimg/node:lts .
docker build --file 14.17/browsers/Dockerfile -t cimg/node:14.17.4-browsers  -t cimg/node:14.17-browsers  -t cimg/node:lts-browsers .
docker build --file 16.6/Dockerfile -t cimg/node:16.6.0  -t cimg/node:16.6  -t cimg/node:current .
docker build --file 16.6/browsers/Dockerfile -t cimg/node:16.6.0-browsers  -t cimg/node:16.6-browsers  -t cimg/node:current-browsers .
