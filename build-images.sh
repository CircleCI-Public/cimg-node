#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 14.20/Dockerfile -t cimg/node:14.20.1 -t cimg/node:14.20 .
docker build --file 14.20/browsers/Dockerfile -t cimg/node:14.20.1-browsers -t cimg/node:14.20-browsers .
docker build --file 16.17/Dockerfile -t cimg/node:16.17.1 -t cimg/node:16.17 .
docker build --file 16.17/browsers/Dockerfile -t cimg/node:16.17.1-browsers -t cimg/node:16.17-browsers .
docker build --file 18.9/Dockerfile -t cimg/node:18.9.1 -t cimg/node:18.9 .
docker build --file 18.9/browsers/Dockerfile -t cimg/node:18.9.1-browsers -t cimg/node:18.9-browsers .
