#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 26.12/Dockerfile -t cimg/node:26.12.1 -t cimg/node:26.12 --push .
docker buildx build --platform=linux/amd64 --file 26.12/browsers/Dockerfile -t cimg/node:26.12.1-browsers -t cimg/node:26.12-browsers --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 24.22/Dockerfile -t cimg/node:24.22.1 -t cimg/node:24.22 --push .
docker buildx build --platform=linux/amd64 --file 24.22/browsers/Dockerfile -t cimg/node:24.22.1-browsers -t cimg/node:24.22-browsers --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 22.23/Dockerfile -t cimg/node:22.23.4 -t cimg/node:22.23 --push .
docker buildx build --platform=linux/amd64 --file 22.23/browsers/Dockerfile -t cimg/node:22.23.4-browsers -t cimg/node:22.23-browsers --push .
