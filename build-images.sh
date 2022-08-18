#!/usr/bin/env bash

docker build --file 16.17/Dockerfile -t cimg/node:16.17.0  -t cimg/node:16.17  -t cimg/node:lts .
docker build --file 16.17/browsers/Dockerfile -t cimg/node:16.17.0-browsers  -t cimg/node:16.17-browsers  -t cimg/node:lts-browsers .
