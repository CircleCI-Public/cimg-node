#!/usr/bin/env bash

docker build --file 14.18/Dockerfile -t cimg/node:14.18.2  -t cimg/node:14.18 .
docker build --file 14.18/browsers/Dockerfile -t cimg/node:14.18.2-browsers  -t cimg/node:14.18-browsers .
