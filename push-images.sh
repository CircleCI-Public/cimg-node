#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail
docker buildx imagetools create -t cimg/node:current cimg/node:22.10.0
docker buildx imagetools create -t cimg/node:current-browsers cimg/node:22.10.0-browsers
