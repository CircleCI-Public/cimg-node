#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 20.3/Dockerfile -t cimg/node:20.3.1 -t cimg/node:20.3 --platform linux/amd64 .
docker build --file 20.3/browsers/Dockerfile -t cimg/node:20.3.1-browsers -t cimg/node:20.3-browsers --platform linux/amd64 .
docker build --file 18.16/Dockerfile -t cimg/node:18.16.1 -t cimg/node:18.16 --platform linux/amd64 .
docker build --file 18.16/browsers/Dockerfile -t cimg/node:18.16.1-browsers -t cimg/node:18.16-browsers --platform linux/amd64 .
docker build --file 16.20/Dockerfile -t cimg/node:16.20.1 -t cimg/node:16.20 --platform linux/amd64 .
docker build --file 16.20/browsers/Dockerfile -t cimg/node:16.20.1-browsers -t cimg/node:16.20-browsers --platform linux/amd64 .
