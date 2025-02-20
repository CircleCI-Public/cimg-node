#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 18.20/Dockerfile -t cimg/node:18.20.7 -t cimg/node:18.20 --push .
docker buildx build --platform=linux/amd64 --file 18.20/browsers/Dockerfile -t cimg/node:18.20.7-browsers -t cimg/node:18.20-browsers --push .
