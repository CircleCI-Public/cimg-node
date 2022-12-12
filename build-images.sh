#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 19.2/Dockerfile -t cimg/node:19.2.0 -t cimg/node:19.2 .
docker build --file 19.2/browsers/Dockerfile -t cimg/node:19.2.0-browsers -t cimg/node:19.2-browsers .
