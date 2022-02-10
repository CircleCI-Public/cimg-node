#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 17.5/Dockerfile -t cimg/node:17.5.0  -t cimg/node:17.5  -t cimg/node:current .
docker build --file 17.5/browsers/Dockerfile -t cimg/node:17.5.0-browsers  -t cimg/node:17.5-browsers  -t cimg/node:current-browsers .
