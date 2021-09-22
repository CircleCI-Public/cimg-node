#!/usr/bin/env bash

docker build --file 16.9/Dockerfile -t cimg/node:16.9.1  -t cimg/node:16.9 .
docker build --file 16.9/browsers/Dockerfile -t cimg/node:16.9.1-browsers  -t cimg/node:16.9-browsers .
