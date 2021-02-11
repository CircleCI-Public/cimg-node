#!/usr/bin/env bash

docker build --file 12.20/Dockerfile -t cimg/node:12.20.2  -t cimg/node:12.20 .
docker build --file 12.20/browsers/Dockerfile -t cimg/node:12.20.2-browsers  -t cimg/node:12.20-browsers .
