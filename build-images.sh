#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 22.22/Dockerfile -t cimg/node:22.22.3 -t cimg/node:22.22 --push .
docker buildx build --platform=linux/amd64 --file 22.22/browsers/Dockerfile -t cimg/node:22.22.3-browsers -t cimg/node:22.22-browsers --push .
