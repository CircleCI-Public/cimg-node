#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 17.9/Dockerfile -t cimg/node:17.9.0  -t cimg/node:17.9  -t cimg/node:current .
docker build --file 17.9/browsers/Dockerfile -t cimg/node:17.9.0-browsers  -t cimg/node:17.9-browsers  -t cimg/node:current-browsers .
