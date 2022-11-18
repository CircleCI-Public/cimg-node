#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 19.1/Dockerfile -t cimg/node:19.1.0 -t cimg/node:19.1 .
docker build --file 19.1/browsers/Dockerfile -t cimg/node:19.1.0-browsers -t cimg/node:19.1-browsers .
