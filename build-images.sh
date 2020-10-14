#!/usr/bin/env bash

docker build --file 10.22/browsers/Dockerfile -t cimg/node:10.22.1-browsers  -t cimg/node:10.22-browsers .
docker build --file 12.18/browsers/Dockerfile -t cimg/node:12.18.4-browsers  -t cimg/node:12.18-browsers .
docker build --file 12.19/browsers/Dockerfile -t cimg/node:12.19.0-browsers  -t cimg/node:12.19-browsers .
docker build --file 14.12/browsers/Dockerfile -t cimg/node:14.12.0-browsers  -t cimg/node:14.12-browsers .
docker build --file 14.13/browsers/Dockerfile -t cimg/node:14.13.1-browsers  -t cimg/node:14.13-browsers .
