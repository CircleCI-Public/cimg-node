#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 24.4/Dockerfile -t cimg/node:24.4.0 -t cimg/node:24.4 --push .
docker buildx build --platform=linux/amd64 --file 24.4/browsers/Dockerfile -t cimg/node:24.4.0-browsers -t cimg/node:24.4-browsers --push .
