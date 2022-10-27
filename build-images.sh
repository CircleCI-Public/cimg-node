#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 18.12/Dockerfile -t cimg/node:18.12.0 -t cimg/node:18.12 .
docker build --file 18.12/browsers/Dockerfile -t cimg/node:18.12.0-browsers -t cimg/node:18.12-browsers .
