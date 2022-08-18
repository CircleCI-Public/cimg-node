#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 16.17/Dockerfile -t cimg/node:16.17.0 -t cimg/node:16.17 .
docker build --file 16.17/browsers/Dockerfile -t cimg/node:16.17.0-browsers -t cimg/node:16.17-browsers .
