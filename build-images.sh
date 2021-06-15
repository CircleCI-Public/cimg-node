#!/usr/bin/env bash

docker build --file 14.17/Dockerfile -t cimg/node:14.17.1  -t cimg/node:14.17  -t cimg/node:lts .
docker build --file 14.17/browsers/Dockerfile -t cimg/node:14.17.1-browsers  -t cimg/node:14.17-browsers  -t cimg/node:lts-browsers .
