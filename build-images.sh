#!/usr/bin/env bash

docker build --file 14.9/Dockerfile -t cimg/node:14.9.0  -t cimg/node:14.9  -t cimg/node:current .
