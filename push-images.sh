#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail
docker buildx imagetools create -t cimg/node:lts cimg/node:20.15.0
docker buildx imagetools create -t cimg/node:lts-browsers cimg/node:20.15.0-browsers
