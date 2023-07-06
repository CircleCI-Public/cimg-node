#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 20.4/Dockerfile -t cimg/node:20.4.0 -t cimg/node:20.4 .
docker buildx build --platform=linux/amd64 --file 20.4/browsers/Dockerfile -t cimg/node:20.4.0-browsers -t cimg/node:20.4-browsers .
docker buildx build --platform=linux/amd64,linux/arm64 --file 18.16/Dockerfile -t cimg/node:18.16.1 -t cimg/node:18.16 .
docker buildx build --platform=linux/amd64 --file 18.16/browsers/Dockerfile -t cimg/node:18.16.1-browsers -t cimg/node:18.16-browsers .
