#!/usr/bin/env bash

docker build --file 12.16/Dockerfile -t cimg/node:12.16.3  -t cimg/node:12.16  -t cimg/node:lts .
docker build --file 14.0/Dockerfile -t cimg/node:14.0.0  -t cimg/node:14.0  -t cimg/node:current .
