#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 20.3/Dockerfile -t cimg/node:20.3.1 -t cimg/node:20.3 .
docker buildx build --platform=linux/amd64 --file 20.3/browsers/Dockerfile -t cimg/node:20.3.1-browsers -t cimg/node:20.3-browsers .
