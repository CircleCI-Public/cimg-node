#!/usr/bin/env bash

docker build --file 14.8/Dockerfile -t cimg/node:14.8.0  -t cimg/node:14.8 -t cimg/node:current .
