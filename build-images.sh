#!/usr/bin/env bash

docker build --file 14.17/Dockerfile -t cimg/node:14.17.5  -t cimg/node:14.17  -t cimg/node:lts .
docker build --file 14.17/browsers/Dockerfile -t cimg/node:14.17.5-browsers  -t cimg/node:14.17-browsers  -t cimg/node:lts-browsers .
docker build --file 16.8/Dockerfile -t cimg/node:16.8.0  -t cimg/node:16.8  -t cimg/node:current .
docker build --file 16.8/browsers/Dockerfile -t cimg/node:16.8.0-browsers  -t cimg/node:16.8-browsers  -t cimg/node:current-browsers .
