#!/usr/bin/env bash

docker build --file 17.4/Dockerfile -t cimg/node:17.4.0  -t cimg/node:17.4  -t cimg/node:current .
docker build --file 17.4/browsers/Dockerfile -t cimg/node:17.4.0-browsers  -t cimg/node:17.4-browsers  -t cimg/node:current-browsers .
