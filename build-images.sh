#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 14.21/Dockerfile -t cimg/node:14.21.2 -t cimg/node:14.21 .
docker build --file 14.21/browsers/Dockerfile -t cimg/node:14.21.2-browsers -t cimg/node:14.21-browsers .
docker build --file 18.13/Dockerfile -t cimg/node:18.13.0 -t cimg/node:18.13 .
docker build --file 18.13/browsers/Dockerfile -t cimg/node:18.13.0-browsers -t cimg/node:18.13-browsers .
docker build --file 19.4/Dockerfile -t cimg/node:19.4.0 -t cimg/node:19.4 .
docker build --file 19.4/browsers/Dockerfile -t cimg/node:19.4.0-browsers -t cimg/node:19.4-browsers .
