#!/usr/bin/env bash

docker build --file 17.0/Dockerfile -t cimg/node:17.0.0  -t cimg/node:17.0  -t cimg/node:current .
docker build --file 17.0/browsers/Dockerfile -t cimg/node:17.0.0-browsers  -t cimg/node:17.0-browsers  -t cimg/node:current-browsers .
