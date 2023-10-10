#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 18.18/Dockerfile -t cimg/node:18.18.1 -t cimg/node:18.18 --push .
docker buildx build --platform=linux/amd64 --file 18.18/browsers/Dockerfile -t cimg/node:18.18.1-browsers -t cimg/node:18.18-browsers --push .
