#!/usr/bin/env bash

docker build --file 14.4/Dockerfile -t cimg/node:14.4.0  -t cimg/node:14.4  -t cimg/node:current .
