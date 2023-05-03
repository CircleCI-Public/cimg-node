#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 20.1/Dockerfile -t cimg/node:20.1.0 -t cimg/node:20.1 --platform linux/amd64 .
docker build --file 20.1/browsers/Dockerfile -t cimg/node:20.1.0-browsers -t cimg/node:20.1-browsers --platform linux/amd64 .
