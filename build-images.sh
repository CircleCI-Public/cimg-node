#!/usr/bin/env bash

docker build --file 15.6/Dockerfile -t cimg/node:15.6.0  -t cimg/node:15.6  -t cimg/node:current .
docker build --file 15.6/browsers/Dockerfile -t cimg/node:15.6.0-browsers  -t cimg/node:15.6-browsers  -t cimg/node:current-browsers .
