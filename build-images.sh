#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 22.4/Dockerfile -t cimg/node:22.4.1 -t cimg/node:22.4 --push .
docker buildx build --platform=linux/amd64 --file 22.4/browsers/Dockerfile -t cimg/node:22.4.1-browsers -t cimg/node:22.4-browsers --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 20.15/Dockerfile -t cimg/node:20.15.1 -t cimg/node:20.15 --push .
docker buildx build --platform=linux/amd64 --file 20.15/browsers/Dockerfile -t cimg/node:20.15.1-browsers -t cimg/node:20.15-browsers --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 18.20/Dockerfile -t cimg/node:18.20.4 -t cimg/node:18.20 --push .
docker buildx build --platform=linux/amd64 --file 18.20/browsers/Dockerfile -t cimg/node:18.20.4-browsers -t cimg/node:18.20-browsers --push .
