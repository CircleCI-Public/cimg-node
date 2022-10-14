#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 18.11/Dockerfile -t cimg/node:18.11.0 -t cimg/node:18.11 .
docker build --file 18.11/browsers/Dockerfile -t cimg/node:18.11.0-browsers -t cimg/node:18.11-browsers .
