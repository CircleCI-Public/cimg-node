#!/usr/bin/env bash

docker build --file 14.12/Dockerfile -t cimg/node:14.12.0  -t cimg/node:14.12  -t cimg/node:current .
