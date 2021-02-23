#!/usr/bin/env bash

docker build --file 10.24/Dockerfile -t cimg/node:10.24.0  -t cimg/node:10.24 .
docker build --file 10.24/browsers/Dockerfile -t cimg/node:10.24.0-browsers  -t cimg/node:10.24-browsers .
docker build --file 12.21/Dockerfile -t cimg/node:12.21.0  -t cimg/node:12.21 .
docker build --file 12.21/browsers/Dockerfile -t cimg/node:12.21.0-browsers  -t cimg/node:12.21-browsers .
docker build --file 14.16/Dockerfile -t cimg/node:14.16.0  -t cimg/node:14.16  -t cimg/node:lts .
docker build --file 14.16/browsers/Dockerfile -t cimg/node:14.16.0-browsers  -t cimg/node:14.16-browsers  -t cimg/node:lts-browsers .
docker build --file 15.10/Dockerfile -t cimg/node:15.10.0  -t cimg/node:15.10  -t cimg/node:current .
docker build --file 15.10/browsers/Dockerfile -t cimg/node:15.10.0-browsers  -t cimg/node:15.10-browsers  -t cimg/node:current-browsers .
