#!/usr/bin/env bash

docker build --file 16.11/Dockerfile -t cimg/node:16.11.0  -t cimg/node:16.11  -t cimg/node:current .
docker build --file 16.11/browsers/Dockerfile -t cimg/node:16.11.0-browsers  -t cimg/node:16.11-browsers  -t cimg/node:current-browsers .
