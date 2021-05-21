#!/usr/bin/env bash

docker build --file 16.2/Dockerfile -t cimg/node:16.2.0  -t cimg/node:16.2 .
docker build --file 16.2/browsers/Dockerfile -t cimg/node:16.2.0-browsers  -t cimg/node:16.2-browsers .
