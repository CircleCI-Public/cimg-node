#!/usr/bin/env bash

docker build --file 16.13/Dockerfile -t cimg/node:16.13.1  -t cimg/node:16.13  -t cimg/node:lts .
docker build --file 16.13/browsers/Dockerfile -t cimg/node:16.13.1-browsers  -t cimg/node:16.13-browsers  -t cimg/node:lts-browsers .
