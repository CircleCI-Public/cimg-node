#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 19.9/Dockerfile -t cimg/node:19.9.0 -t cimg/node:19.9 --platform linux/amd64 .
docker build --file 19.9/browsers/Dockerfile -t cimg/node:19.9.0-browsers -t cimg/node:19.9-browsers --platform linux/amd64 .
