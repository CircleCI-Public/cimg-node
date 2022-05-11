#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 12.13/Dockerfile -t cimg/node:12.13.1 -t cimg/node:12.13 .
docker build --file 12.13/browsers/Dockerfile -t cimg/node:12.13.1-browsers -t cimg/node:12.13-browsers .
docker build --file 14.19/Dockerfile -t cimg/node:14.19.2 -t cimg/node:14.19 .
docker build --file 14.19/browsers/Dockerfile -t cimg/node:14.19.2-browsers -t cimg/node:14.19-browsers .
docker build --file 16.15/Dockerfile -t cimg/node:16.15.0 -t cimg/node:16.15 .
docker build --file 16.15/browsers/Dockerfile -t cimg/node:16.15.0-browsers -t cimg/node:16.15-browsers .
docker build --file 18.1/Dockerfile -t cimg/node:18.1.0 -t cimg/node:18.1 .
docker build --file 18.1/browsers/Dockerfile -t cimg/node:18.1.0-browsers -t cimg/node:18.1-browsers .
