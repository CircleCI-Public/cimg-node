#!/usr/bin/env bash

docker build --file 15.2/Dockerfile -t cimg/node:15.2.0  -t cimg/node:15.2  -t cimg/node:current .
docker build --file 15.2/browsers/Dockerfile -t cimg/node:15.2.0-browsers  -t cimg/node:15.2-browsers  -t cimg/node:current-browsers .
