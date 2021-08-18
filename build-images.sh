#!/usr/bin/env bash

docker build --file 16.7/Dockerfile -t cimg/node:16.7.0  -t cimg/node:16.7  -t cimg/node:current .
docker build --file 16.7/browsers/Dockerfile -t cimg/node:16.7.0-browsers  -t cimg/node:16.7-browsers  -t cimg/node:current-browsers .
