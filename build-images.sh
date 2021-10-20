#!/usr/bin/env bash

docker build --file 16.12/Dockerfile -t cimg/node:16.12.0  -t cimg/node:16.12 .
docker build --file 16.12/browsers/Dockerfile -t cimg/node:16.12.0-browsers  -t cimg/node:16.12-browsers .
