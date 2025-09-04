#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 20.19/Dockerfile -t cimg/node:20.19.5 -t cimg/node:20.19 --push .
docker buildx build --platform=linux/amd64 --file 20.19/browsers/Dockerfile -t cimg/node:20.19.5-browsers -t cimg/node:20.19-browsers --push .
