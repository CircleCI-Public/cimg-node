#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 20.8/Dockerfile -t cimg/node:20.8.1 -t cimg/node:20.8 --push .
docker buildx build --platform=linux/amd64 --file 20.8/browsers/Dockerfile -t cimg/node:20.8.1-browsers -t cimg/node:20.8-browsers --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 18.18/Dockerfile -t cimg/node:18.18.2 -t cimg/node:18.18 --push .
docker buildx build --platform=linux/amd64 --file 18.18/browsers/Dockerfile -t cimg/node:18.18.2-browsers -t cimg/node:18.18-browsers --push .
