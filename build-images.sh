#!/usr/bin/env bash

docker build --file 14.13/Dockerfile -t cimg/node:14.13.0  -t cimg/node:14.13  -t cimg/node:current .
