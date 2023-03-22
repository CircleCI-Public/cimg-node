#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 19.8/Dockerfile -t cimg/node:19.8.1 -t cimg/node:19.8 --platform linux/amd64 .
docker build --file 19.8/browsers/Dockerfile -t cimg/node:19.8.1-browsers -t cimg/node:19.8-browsers --platform linux/amd64 .
