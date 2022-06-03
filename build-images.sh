#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 16.15/Dockerfile -t cimg/node:16.15.1 -t cimg/node:16.15 .
docker build --file 16.15/browsers/Dockerfile -t cimg/node:16.15.1-browsers -t cimg/node:16.15-browsers .
docker build --file 17.9/Dockerfile -t cimg/node:17.9.1 -t cimg/node:17.9 .
docker build --file 17.9/browsers/Dockerfile -t cimg/node:17.9.1-browsers -t cimg/node:17.9-browsers .
docker build --file 18.3/Dockerfile -t cimg/node:18.3.0 -t cimg/node:18.3 .
docker build --file 18.3/browsers/Dockerfile -t cimg/node:18.3.0-browsers -t cimg/node:18.3-browsers .
