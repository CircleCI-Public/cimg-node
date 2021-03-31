#!/usr/bin/env bash

docker build --file 15.13/Dockerfile -t cimg/node:15.13.0  -t cimg/node:15.13  -t cimg/node:current .
docker build --file 15.13/browsers/Dockerfile -t cimg/node:15.13.0-browsers  -t cimg/node:15.13-browsers  -t cimg/node:current-browsers .
