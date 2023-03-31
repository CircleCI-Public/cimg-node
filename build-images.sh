#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 16.20/Dockerfile -t cimg/node:16.20.0 -t cimg/node:16.20 --platform linux/amd64 .
docker build --file 16.20/browsers/Dockerfile -t cimg/node:16.20.0-browsers -t cimg/node:16.20-browsers --platform linux/amd64 .
