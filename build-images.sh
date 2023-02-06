#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 18.14/Dockerfile -t cimg/node:18.14.0 -t cimg/node:18.14 .
docker build --file 18.14/browsers/Dockerfile -t cimg/node:18.14.0-browsers -t cimg/node:18.14-browsers .
docker build --file 19.6/Dockerfile -t cimg/node:19.6.0 -t cimg/node:19.6 .
docker build --file 19.6/browsers/Dockerfile -t cimg/node:19.6.0-browsers -t cimg/node:19.6-browsers .
