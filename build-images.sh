#!/usr/bin/env bash

docker build --file 16.6/Dockerfile -t cimg/node:16.6.1  -t cimg/node:16.6  -t cimg/node:current .
docker build --file 16.6/browsers/Dockerfile -t cimg/node:16.6.1-browsers  -t cimg/node:16.6-browsers  -t cimg/node:current-browsers .
