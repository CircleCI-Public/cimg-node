#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 19.0/Dockerfile -t cimg/node:19.0.0 -t cimg/node:19.0 .
docker build --file 19.0/browsers/Dockerfile -t cimg/node:19.0.0-browsers -t cimg/node:19.0-browsers .
