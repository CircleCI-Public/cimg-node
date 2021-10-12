#!/usr/bin/env bash

docker build --file 12.22/Dockerfile -t cimg/node:12.22.7  -t cimg/node:12.22 .
docker build --file 12.22/browsers/Dockerfile -t cimg/node:12.22.7-browsers  -t cimg/node:12.22-browsers .
docker build --file 14.18/Dockerfile -t cimg/node:14.18.1  -t cimg/node:14.18  -t cimg/node:lts .
docker build --file 14.18/browsers/Dockerfile -t cimg/node:14.18.1-browsers  -t cimg/node:14.18-browsers  -t cimg/node:lts-browsers .
docker build --file 16.11/Dockerfile -t cimg/node:16.11.1  -t cimg/node:16.11  -t cimg/node:current .
docker build --file 16.11/browsers/Dockerfile -t cimg/node:16.11.1-browsers  -t cimg/node:16.11-browsers  -t cimg/node:current-browsers .
