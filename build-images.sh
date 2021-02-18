#!/usr/bin/env bash

docker build --file 15.9/Dockerfile -t cimg/node:15.9.0  -t cimg/node:15.9  -t cimg/node:current .
docker build --file 15.9/browsers/Dockerfile -t cimg/node:15.9.0-browsers  -t cimg/node:15.9-browsers  -t cimg/node:current-browsers .
