#!/usr/bin/env bash

docker build --file 15.1/Dockerfile -t cimg/node:15.1.0  -t cimg/node:15.1  -t cimg/node:current .
docker build --file 15.1/browsers/Dockerfile -t cimg/node:15.1.0-browsers  -t cimg/node:15.1-browsers  -t cimg/node:current-browsers .
