#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail
docker buildx imagetools create -t cimg/node:current cimg/node:25.2.0
docker buildx imagetools create -t cimg/node:current-browsers cimg/node:25.2.0-browsers
docker buildx imagetools create -t cimg/node:lts cimg/node:24.11.1
docker buildx imagetools create -t cimg/node:lts-browsers cimg/node:24.11.1-browsers
