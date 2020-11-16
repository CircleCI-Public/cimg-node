#!/usr/bin/env bash

docker build --file 12.19/Dockerfile -t cimg/node:12.19.1  -t cimg/node:12.19 .
docker build --file 12.19/browsers/Dockerfile -t cimg/node:12.19.1-browsers  -t cimg/node:12.19-browsers .
docker build --file 14.15/Dockerfile -t cimg/node:14.15.1  -t cimg/node:14.15  -t cimg/node:lts .
docker build --file 14.15/browsers/Dockerfile -t cimg/node:14.15.1-browsers  -t cimg/node:14.15-browsers  -t cimg/node:lts-browsers .
docker build --file 15.2/Dockerfile -t cimg/node:15.2.1  -t cimg/node:15.2  -t cimg/node:current .
docker build --file 15.2/browsers/Dockerfile -t cimg/node:15.2.1-browsers  -t cimg/node:15.2-browsers  -t cimg/node:current-browsers .
