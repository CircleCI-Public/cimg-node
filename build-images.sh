#!/usr/bin/env bash

docker build --file 15.8/Dockerfile -t cimg/node:15.8.0  -t cimg/node:15.8  -t cimg/node:current .
docker build --file 15.8/browsers/Dockerfile -t cimg/node:15.8.0-browsers  -t cimg/node:15.8-browsers  -t cimg/node:current-browsers .
