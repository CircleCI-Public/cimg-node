#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 18.10/Dockerfile -t cimg/node:18.10.0 -t cimg/node:18.10 .
docker build --file 18.10/browsers/Dockerfile -t cimg/node:18.10.0-browsers -t cimg/node:18.10-browsers .
