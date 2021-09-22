#!/usr/bin/env bash

docker build --file 16.10/Dockerfile -t cimg/node:16.10.0  -t cimg/node:16.10  -t cimg/node:current .
docker build --file 16.10/browsers/Dockerfile -t cimg/node:16.10.0-browsers  -t cimg/node:16.10-browsers  -t cimg/node:current-browsers .
