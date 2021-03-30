#!/usr/bin/env bash

docker build --file 12.22/Dockerfile -t cimg/node:12.22.0  -t cimg/node:12.22 .
docker build --file 12.22/browsers/Dockerfile -t cimg/node:12.22.0-browsers  -t cimg/node:12.22-browsers .
