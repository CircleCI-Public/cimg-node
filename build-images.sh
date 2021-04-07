#!/usr/bin/env bash

docker build --file 10.24/Dockerfile -t cimg/node:10.24.1  -t cimg/node:10.24 .
docker build --file 10.24/browsers/Dockerfile -t cimg/node:10.24.1-browsers  -t cimg/node:10.24-browsers .
docker build --file 12.22/Dockerfile -t cimg/node:12.22.1  -t cimg/node:12.22 .
docker build --file 12.22/browsers/Dockerfile -t cimg/node:12.22.1-browsers  -t cimg/node:12.22-browsers .
docker build --file 14.16/Dockerfile -t cimg/node:14.16.1  -t cimg/node:14.16  -t cimg/node:lts .
docker build --file 14.16/browsers/Dockerfile -t cimg/node:14.16.1-browsers  -t cimg/node:14.16-browsers  -t cimg/node:lts-browsers .
docker build --file 15.14/Dockerfile -t cimg/node:15.14.0  -t cimg/node:15.14  -t cimg/node:current .
docker build --file 15.14/browsers/Dockerfile -t cimg/node:15.14.0-browsers  -t cimg/node:15.14-browsers  -t cimg/node:current-browsers .
