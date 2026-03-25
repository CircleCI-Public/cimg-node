#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 25.8/Dockerfile -t cimg/node:25.8.2 -t cimg/node:25.8 --push .
docker buildx build --platform=linux/amd64 --file 25.8/browsers/Dockerfile -t cimg/node:25.8.2-browsers -t cimg/node:25.8-browsers --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 24.14/Dockerfile -t cimg/node:24.14.1 -t cimg/node:24.14 --push .
docker buildx build --platform=linux/amd64 --file 24.14/browsers/Dockerfile -t cimg/node:24.14.1-browsers -t cimg/node:24.14-browsers --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 22.22/Dockerfile -t cimg/node:22.22.2 -t cimg/node:22.22 --push .
docker buildx build --platform=linux/amd64 --file 22.22/browsers/Dockerfile -t cimg/node:22.22.2-browsers -t cimg/node:22.22-browsers --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 20.20/Dockerfile -t cimg/node:20.20.2 -t cimg/node:20.20 --push .
docker buildx build --platform=linux/amd64 --file 20.20/browsers/Dockerfile -t cimg/node:20.20.2-browsers -t cimg/node:20.20-browsers --push .
