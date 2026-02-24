#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail
docker buildx imagetools create -t cimg/node:current cimg/node:25.7.0
docker buildx imagetools create -t cimg/node:current-browsers cimg/node:25.7.0-browsers
docker buildx imagetools create -t cimg/node:lts cimg/node:24.14.0
docker buildx imagetools create -t cimg/node:lts-browsers cimg/node:24.14.0-browsers
