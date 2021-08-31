#!/usr/bin/env bash

docker build --file 12.22/Dockerfile -t cimg/node:12.22.6  -t cimg/node:12.22 .
docker build --file 12.22/browsers/Dockerfile -t cimg/node:12.22.6-browsers  -t cimg/node:12.22-browsers .
docker build --file 14.17/Dockerfile -t cimg/node:14.17.6  -t cimg/node:14.17  -t cimg/node:lts .
docker build --file 14.17/browsers/Dockerfile -t cimg/node:14.17.6-browsers  -t cimg/node:14.17-browsers  -t cimg/node:lts-browsers .
