#!/usr/bin/env bash

docker build --file 10.23/Dockerfile -t cimg/node:10.23.0  -t cimg/node:10.23 .
docker build --file 10.23/browsers/Dockerfile -t cimg/node:10.23.0-browsers  -t cimg/node:10.23-browsers .
docker build --file 14.15/Dockerfile -t cimg/node:14.15.0  -t cimg/node:14.15  -t cimg/node:lts .
docker build --file 14.15/browsers/Dockerfile -t cimg/node:14.15.0-browsers  -t cimg/node:14.15-browsers  -t cimg/node:lts-browsers .
