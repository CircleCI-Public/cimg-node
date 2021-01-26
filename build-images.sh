#!/usr/bin/env bash

docker build --file 10.23/Dockerfile -t cimg/node:10.23.2  -t cimg/node:10.23 .
docker build --file 10.23/browsers/Dockerfile -t cimg/node:10.23.2-browsers  -t cimg/node:10.23-browsers .
docker build --file 15.7/Dockerfile -t cimg/node:15.7.0  -t cimg/node:15.7  -t cimg/node:current .
docker build --file 15.7/browsers/Dockerfile -t cimg/node:15.7.0-browsers  -t cimg/node:15.7-browsers  -t cimg/node:current-browsers .
