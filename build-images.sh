#!/usr/bin/env bash

docker build --file 15.9/Dockerfile -t cimg/node:15.9.0  -t cimg/node:15.9  -t cimg/node:15 -t cimg/node:current .
docker build --file 15.9/browsers/Dockerfile -t cimg/node:15.9.0-browsers  -t cimg/node:15.9-browsers  -t cimg/node:15-browsers -t cimg/node:current-browsers .

docker build --file 14.15/Dockerfile -t cimg/node:14.15.5  -t cimg/node:14.15  -t cimg/node:14 -t cimg/node:lts .
docker build --file 14.15/browsers/Dockerfile -t cimg/node:14.15.5-browsers  -t cimg/node:14.15-browsers  -t cimg/node:14-browsers -t cimg/node:lts-browsers .

docker build --file 12.20/Dockerfile -t cimg/node:12.20.2  -t cimg/node:12.20 -t cimg/node:12 .
docker build --file 12.20/browsers/Dockerfile -t cimg/node:12.20.2-browsers  -t cimg/node:12.20-browsers -t cimg/node:12-browsers .

docker build --file 10.23/Dockerfile -t cimg/node:10.23.3  -t cimg/node:10.23 -t cimg/node:10 .
docker build --file 10.23/browsers/Dockerfile -t cimg/node:10.23.3-browsers  -t cimg/node:10.23-browsers -t cimg/node:10-browsers .

+docker build --file 8.17/Dockerfile -t cimg/node:8.17.0  -t cimg/node:8.17 -t cimg/node:8 .
