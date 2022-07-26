#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 18.5/Dockerfile -t cimg/node:18.5.0 -t cimg/node:18.5 .
docker build --file 18.5/browsers/Dockerfile -t cimg/node:18.5.0-browsers -t cimg/node:18.5-browsers .
