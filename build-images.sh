#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 24.0/Dockerfile -t cimg/node:24.0.2 -t cimg/node:24.0 --push .
docker buildx build --platform=linux/amd64 --file 24.0/browsers/Dockerfile -t cimg/node:24.0.2-browsers -t cimg/node:24.0-browsers --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 23.11/Dockerfile -t cimg/node:23.11.1 -t cimg/node:23.11 --push .
docker buildx build --platform=linux/amd64 --file 23.11/browsers/Dockerfile -t cimg/node:23.11.1-browsers -t cimg/node:23.11-browsers --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 22.15/Dockerfile -t cimg/node:22.15.1 -t cimg/node:22.15 --push .
docker buildx build --platform=linux/amd64 --file 22.15/browsers/Dockerfile -t cimg/node:22.15.1-browsers -t cimg/node:22.15-browsers --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 20.19/Dockerfile -t cimg/node:20.19.2 -t cimg/node:20.19 --push .
docker buildx build --platform=linux/amd64 --file 20.19/browsers/Dockerfile -t cimg/node:20.19.2-browsers -t cimg/node:20.19-browsers --push .
