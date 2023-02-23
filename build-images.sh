#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 19.7/Dockerfile -t cimg/node:19.7.0 -t cimg/node:19.7 .
docker build --file 19.7/browsers/Dockerfile -t cimg/node:19.7.0-browsers -t cimg/node:19.7-browsers .
