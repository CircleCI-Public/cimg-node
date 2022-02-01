#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 14.19/Dockerfile -t cimg/node:14.19.0  -t cimg/node:14.19 .
docker build --file 14.19/browsers/Dockerfile -t cimg/node:14.19.0-browsers  -t cimg/node:14.19-browsers .
