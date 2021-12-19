#!/usr/bin/env bash

docker build --file 12.22/Dockerfile -t cimg/node:12.22.8  -t cimg/node:12.22  -t cimg/node:lts .
docker build --file 12.22/browsers/Dockerfile -t cimg/node:12.22.8-browsers  -t cimg/node:12.22-browsers  -t cimg/node:lts-browsers .
