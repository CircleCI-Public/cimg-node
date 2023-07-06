#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 20.4/Dockerfile -t cimg/node:20.4.0 -t cimg/node:20.4 --platform linux/amd64 .
docker build --file 20.4/browsers/Dockerfile -t cimg/node:20.4.0-browsers -t cimg/node:20.4-browsers --platform linux/amd64 .
