#!/usr/bin/env bash

docker build --file 14.1/Dockerfile -t cimg/node:14.1.0  -t cimg/node:14.1  -t cimg/node:current .
