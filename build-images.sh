#!/usr/bin/env bash

docker build --file 12.22/Dockerfile -t cimg/node:12.22.6  -t cimg/node:12.22 .
docker build --file 12.22/browsers/Dockerfile -t cimg/node:12.22.6-browsers  -t cimg/node:12.22-browsers .
docker build --file 14.7/Dockerfile -t cimg/node:14.7.6  -t cimg/node:14.7  -t cimg/node:lts .
docker build --file 14.7/browsers/Dockerfile -t cimg/node:14.7.6-browsers  -t cimg/node:14.7-browsers  -t cimg/node:lts-browsers .
