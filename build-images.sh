#!/usr/bin/env bash

docker build --file 12.19/Dockerfile -t cimg/node:12.19.0  -t cimg/node:12.19  -t cimg/node:lts .
