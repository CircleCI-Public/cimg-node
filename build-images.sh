#!/usr/bin/env bash

docker build --file 14.18/Dockerfile -t cimg/node:14.18.0  -t cimg/node:14.18  -t cimg/node:lts .
docker build --file 14.18/browsers/Dockerfile -t cimg/node:14.18.0-browsers  -t cimg/node:14.18-browsers  -t cimg/node:lts-browsers .
