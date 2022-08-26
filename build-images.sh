#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 18.8/Dockerfile -t cimg/node:18.8.0 -t cimg/node:18.8 .
docker build --file 18.8/browsers/Dockerfile -t cimg/node:18.8.0-browsers -t cimg/node:18.8-browsers .
