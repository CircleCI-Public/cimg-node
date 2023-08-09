#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail
docker buildx imagetools create -t cimg/node:current cimg/node:20.5.1
docker buildx imagetools create -t cimg/node:current-browsers cimg/node:20.5.1-browsers
docker buildx imagetools create -t cimg/node:lts cimg/node:18.17.1
docker buildx imagetools create -t cimg/node:lts-browsers cimg/node:18.17.1-browsers
