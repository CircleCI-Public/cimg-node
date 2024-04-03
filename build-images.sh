#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 21.7/Dockerfile -t cimg/node:21.7.2 -t cimg/node:21.7 --push .
docker buildx build --platform=linux/amd64 --file 21.7/browsers/Dockerfile -t cimg/node:21.7.2-browsers -t cimg/node:21.7-browsers --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 20.12/Dockerfile -t cimg/node:20.12.1 -t cimg/node:20.12 --push .
docker buildx build --platform=linux/amd64 --file 20.12/browsers/Dockerfile -t cimg/node:20.12.1-browsers -t cimg/node:20.12-browsers --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 18.20/Dockerfile -t cimg/node:18.20.1 -t cimg/node:18.20 --push .
docker buildx build --platform=linux/amd64 --file 18.20/browsers/Dockerfile -t cimg/node:18.20.1-browsers -t cimg/node:18.20-browsers --push .
