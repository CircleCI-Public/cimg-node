#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 25.3/Dockerfile -t cimg/node:25.3.0 -t cimg/node:25.3 --push .
docker buildx build --platform=linux/amd64 --file 25.3/browsers/Dockerfile -t cimg/node:25.3.0-browsers -t cimg/node:25.3-browsers --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 24.13/Dockerfile -t cimg/node:24.13.0 -t cimg/node:24.13 --push .
docker buildx build --platform=linux/amd64 --file 24.13/browsers/Dockerfile -t cimg/node:24.13.0-browsers -t cimg/node:24.13-browsers --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 22.22/Dockerfile -t cimg/node:22.22.0 -t cimg/node:22.22 --push .
docker buildx build --platform=linux/amd64 --file 22.22/browsers/Dockerfile -t cimg/node:22.22.0-browsers -t cimg/node:22.22-browsers --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 20.20/Dockerfile -t cimg/node:20.20.0 -t cimg/node:20.20 --push .
docker buildx build --platform=linux/amd64 --file 20.20/browsers/Dockerfile -t cimg/node:20.20.0-browsers -t cimg/node:20.20-browsers --push .
