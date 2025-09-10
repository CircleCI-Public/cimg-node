#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 24.8/Dockerfile -t cimg/node:24.8.0 -t cimg/node:24.8 --push .
docker buildx build --platform=linux/amd64 --file 24.8/browsers/Dockerfile -t cimg/node:24.8.0-browsers -t cimg/node:24.8-browsers --push .
