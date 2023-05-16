#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 20.2/Dockerfile -t cimg/node:20.2.0 -t cimg/node:20.2 --platform linux/amd64 .
docker build --file 20.2/browsers/Dockerfile -t cimg/node:20.2.0-browsers -t cimg/node:20.2-browsers --platform linux/amd64 .
