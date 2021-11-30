#!/usr/bin/env bash

docker build --file 17.2/Dockerfile -t cimg/node:17.2.0  -t cimg/node:17.2  -t cimg/node:current .
docker build --file 17.2/browsers/Dockerfile -t cimg/node:17.2.0-browsers  -t cimg/node:17.2-browsers  -t cimg/node:current-browsers .
