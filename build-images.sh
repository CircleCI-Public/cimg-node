#!/usr/bin/env bash

docker build --file 10.22/Dockerfile -t cimg/node:10.22.1  -t cimg/node:10.22 .
docker build --file 12.18/Dockerfile -t cimg/node:12.18.4  -t cimg/node:12.18  -t cimg/node:lts .
docker build --file 14.11/Dockerfile -t cimg/node:14.11.0  -t cimg/node:14.11  -t cimg/node:current .
