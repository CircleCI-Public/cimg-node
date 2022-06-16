#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 18.4/Dockerfile -t cimg/node:18.4.0 -t cimg/node:18.4 .
docker build --file 18.4/browsers/Dockerfile -t cimg/node:18.4.0-browsers -t cimg/node:18.4-browsers .
