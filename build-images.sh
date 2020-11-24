#!/usr/bin/env bash

docker build --file 12.20/Dockerfile -t cimg/node:12.20.0  -t cimg/node:12.20 .
docker build --file 12.20/browsers/Dockerfile -t cimg/node:12.20.0-browsers  -t cimg/node:12.20-browsers .
docker build --file 15.3/Dockerfile -t cimg/node:15.3.0  -t cimg/node:15.3  -t cimg/node:current .
docker build --file 15.3/browsers/Dockerfile -t cimg/node:15.3.0-browsers  -t cimg/node:15.3-browsers  -t cimg/node:current-browsers .
