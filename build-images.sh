#!/usr/bin/env bash

docker build --file 14.15/Dockerfile -t cimg/node:14.15.2  -t cimg/node:14.15  -t cimg/node:lts .
docker build --file 14.15/browsers/Dockerfile -t cimg/node:14.15.2-browsers  -t cimg/node:14.15-browsers  -t cimg/node:lts-browsers .
