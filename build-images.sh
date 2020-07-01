#!/usr/bin/env bash

docker build --file 12.18/Dockerfile -t cimg/node:12.18.2  -t cimg/node:12.18  -t cimg/node:lts .
