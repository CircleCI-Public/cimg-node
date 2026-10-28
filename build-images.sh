#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 26.13/Dockerfile -t cimg/node:26.13.0 -t cimg/node:26.13 --push .
docker buildx build --platform=linux/amd64 --file 26.13/browsers/Dockerfile -t cimg/node:26.13.0-browsers -t cimg/node:26.13-browsers --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 24.22/Dockerfile -t cimg/node:24.22.2 -t cimg/node:24.22 --push .
docker buildx build --platform=linux/amd64 --file 24.22/browsers/Dockerfile -t cimg/node:24.22.2-browsers -t cimg/node:24.22-browsers --push .
