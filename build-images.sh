#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 14.21/Dockerfile -t cimg/node:14.21.3 -t cimg/node:14.21 .
docker build --file 14.21/browsers/Dockerfile -t cimg/node:14.21.3-browsers -t cimg/node:14.21-browsers .
docker build --file 16.19/Dockerfile -t cimg/node:16.19.1 -t cimg/node:16.19 .
docker build --file 16.19/browsers/Dockerfile -t cimg/node:16.19.1-browsers -t cimg/node:16.19-browsers .
docker build --file 18.14/Dockerfile -t cimg/node:18.14.1 -t cimg/node:18.14 .
docker build --file 18.14/browsers/Dockerfile -t cimg/node:18.14.1-browsers -t cimg/node:18.14-browsers .
docker build --file 19.6/Dockerfile -t cimg/node:19.6.1 -t cimg/node:19.6 .
docker build --file 19.6/browsers/Dockerfile -t cimg/node:19.6.1-browsers -t cimg/node:19.6-browsers .
