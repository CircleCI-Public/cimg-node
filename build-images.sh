#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 18.15/Dockerfile -t cimg/node:18.15.0 -t cimg/node:18.15 --platform linux/amd64 .
docker build --file 18.15/browsers/Dockerfile -t cimg/node:18.15.0-browsers -t cimg/node:18.15-browsers --platform linux/amd64 .
