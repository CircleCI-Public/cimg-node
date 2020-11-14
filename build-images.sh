#!/usr/bin/env bash

docker build --file 15.1/browsers/Dockerfile -t cimg/node:15.1.0-browsers  -t cimg/node:15.1-browsers .
docker build --file 15.2/browsers/Dockerfile -t cimg/node:15.2.0-browsers  -t cimg/node:15.2-browsers  -t cimg/node:current-browsers .
