#!/usr/bin/env bash

docker build --file 16.4/Dockerfile -t cimg/node:16.4.2  -t cimg/node:16.4 .
docker build --file 16.4/browsers/Dockerfile -t cimg/node:16.4.2-browsers  -t cimg/node:16.4-browsers .
docker build --file 16.5/Dockerfile -t cimg/node:16.5.0  -t cimg/node:16.5  -t cimg/node:current .
docker build --file 16.5/browsers/Dockerfile -t cimg/node:16.5.0-browsers  -t cimg/node:16.5-browsers  -t cimg/node:current-browsers .
