#!/usr/bin/env bash

docker build --file 16.13/Dockerfile -t cimg/node:16.13.0  -t cimg/node:16.13 .
docker build --file 16.13/browsers/Dockerfile -t cimg/node:16.13.0-browsers  -t cimg/node:16.13-browsers .
