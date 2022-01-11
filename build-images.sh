#!/usr/bin/env bash

docker build --file 12.22/Dockerfile -t cimg/node:12.22.9  -t cimg/node:12.22 .
docker build --file 12.22/browsers/Dockerfile -t cimg/node:12.22.9-browsers  -t cimg/node:12.22-browsers .
docker build --file 14.18/Dockerfile -t cimg/node:14.18.3  -t cimg/node:14.18 .
docker build --file 14.18/browsers/Dockerfile -t cimg/node:14.18.3-browsers  -t cimg/node:14.18-browsers .
docker build --file 16.13/Dockerfile -t cimg/node:16.13.2  -t cimg/node:16.13  -t cimg/node:lts .
docker build --file 16.13/browsers/Dockerfile -t cimg/node:16.13.2-browsers  -t cimg/node:16.13-browsers  -t cimg/node:lts-browsers .
docker build --file 17.3/Dockerfile -t cimg/node:17.3.1  -t cimg/node:17.3  -t cimg/node:current .
docker build --file 17.3/browsers/Dockerfile -t cimg/node:17.3.1-browsers  -t cimg/node:17.3-browsers  -t cimg/node:current-browsers .
