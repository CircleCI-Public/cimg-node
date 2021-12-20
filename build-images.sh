#!/usr/bin/env bash

docker build --file 17.3/Dockerfile -t cimg/node:17.3.0  -t cimg/node:17.3  -t cimg/node:current .
docker build --file 17.3/browsers/Dockerfile -t cimg/node:17.3.0-browsers  -t cimg/node:17.3-browsers  -t cimg/node:current-browsers .
