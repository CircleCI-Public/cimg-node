#!/usr/bin/env bash

docker build --file 10.23/Dockerfile -t cimg/node:10.23.1  -t cimg/node:10.23 .
docker build --file 10.23/browsers/Dockerfile -t cimg/node:10.23.1-browsers  -t cimg/node:10.23-browsers .
docker build --file 12.20/Dockerfile -t cimg/node:12.20.1  -t cimg/node:12.20 .
docker build --file 12.20/browsers/Dockerfile -t cimg/node:12.20.1-browsers  -t cimg/node:12.20-browsers .
docker build --file 14.15/Dockerfile -t cimg/node:14.15.4  -t cimg/node:14.15  -t cimg/node:lts .
docker build --file 14.15/browsers/Dockerfile -t cimg/node:14.15.4-browsers  -t cimg/node:14.15-browsers  -t cimg/node:lts-browsers .
docker build --file 15.5/Dockerfile -t cimg/node:15.5.1  -t cimg/node:15.5  -t cimg/node:current .
docker build --file 15.5/browsers/Dockerfile -t cimg/node:15.5.1-browsers  -t cimg/node:15.5-browsers  -t cimg/node:current-browsers .
