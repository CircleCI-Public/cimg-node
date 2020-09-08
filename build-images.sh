#!/usr/bin/env bash

docker build --file 14.10/Dockerfile -t cimg/node:14.10.0  -t cimg/node:14.10  -t cimg/node:current .
