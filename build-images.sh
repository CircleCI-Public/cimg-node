#!/usr/bin/env bash

docker build --file 15.5/Dockerfile -t cimg/node:15.5.0  -t cimg/node:15.5  -t cimg/node:current .
docker build --file 15.5/browsers/Dockerfile -t cimg/node:15.5.0-browsers  -t cimg/node:15.5-browsers  -t cimg/node:current-browsers .
