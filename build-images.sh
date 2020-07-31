#!/usr/bin/env bash

docker build --file 14.7/Dockerfile -t cimg/node:14.7.0  -t cimg/node:14.7  -t cimg/node:current .
