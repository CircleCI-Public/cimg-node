#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 25.7/Dockerfile -t cimg/node:25.7.0 -t cimg/node:25.7 --push .
docker buildx build --platform=linux/amd64 --file 25.7/browsers/Dockerfile -t cimg/node:25.7.0-browsers -t cimg/node:25.7-browsers --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 24.14/Dockerfile -t cimg/node:24.14.0 -t cimg/node:24.14 --push .
docker buildx build --platform=linux/amd64 --file 24.14/browsers/Dockerfile -t cimg/node:24.14.0-browsers -t cimg/node:24.14-browsers --push .
