#!/usr/bin/env bash

docker build --file 14.14/Dockerfile -t cimg/node:14.14.0  -t cimg/node:14.14  -t cimg/node:current .
docker build --file 14.14/browsers/Dockerfile -t cimg/node:14.14.0-browsers  -t cimg/node:14.14-browsers  -t cimg/node:current-browsers .
