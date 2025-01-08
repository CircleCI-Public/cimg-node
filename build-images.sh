#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 23.6/Dockerfile -t cimg/node:23.6.0 -t cimg/node:23.6 --push .
docker buildx build --platform=linux/amd64 --file 23.6/browsers/Dockerfile -t cimg/node:23.6.0-browsers -t cimg/node:23.6-browsers --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 22.13/Dockerfile -t cimg/node:22.13.0 -t cimg/node:22.13 --push .
docker buildx build --platform=linux/amd64 --file 22.13/browsers/Dockerfile -t cimg/node:22.13.0-browsers -t cimg/node:22.13-browsers --push .
