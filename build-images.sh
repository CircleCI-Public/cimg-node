#!/usr/bin/env bash

docker build --file 14.17/Dockerfile -t cimg/node:14.17.0  -t cimg/node:14.17  -t cimg/node:lts .
docker build --file 14.17/browsers/Dockerfile -t cimg/node:14.17.0-browsers  -t cimg/node:14.17-browsers  -t cimg/node:lts-browsers .
