#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 18.9/Dockerfile -t cimg/node:18.9.0 -t cimg/node:18.9 .
docker build --file 18.9/browsers/Dockerfile -t cimg/node:18.9.0-browsers -t cimg/node:18.9-browsers .
