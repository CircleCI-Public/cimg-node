#!/usr/bin/env bash

docker build --file 10.21/Dockerfile -t cimg/node:10.21.0  -t cimg/node:10.21 .
docker build --file 12.18/Dockerfile -t cimg/node:12.18.0  -t cimg/node:12.18  -t cimg/node:lts .
docker build --file 14.4/Dockerfile -t cimg/node:14.4.0  -t cimg/node:14.4  -t cimg/node:current .
