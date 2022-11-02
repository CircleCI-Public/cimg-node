#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 14.21/Dockerfile -t cimg/node:14.21.0 -t cimg/node:14.21 .
docker build --file 14.21/browsers/Dockerfile -t cimg/node:14.21.0-browsers -t cimg/node:14.21-browsers .
