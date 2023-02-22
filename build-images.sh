#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 18.14/Dockerfile -t cimg/node:18.14.2 -t cimg/node:18.14 .
docker build --file 18.14/browsers/Dockerfile -t cimg/node:18.14.2-browsers -t cimg/node:18.14-browsers .
