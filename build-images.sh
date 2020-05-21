#!/usr/bin/env bash

docker build --file 14.3/Dockerfile -t cimg/node:14.3.0  -t cimg/node:14.3  -t cimg/node:current .
