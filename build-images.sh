#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 14.21/Dockerfile -t cimg/node:14.21.0 -t cimg/node:14.21 .
docker build --file 14.21/browsers/Dockerfile -t cimg/node:14.21.0-browsers -t cimg/node:14.21-browsers .
docker build --file 16.18/Dockerfile -t cimg/node:16.18.0 -t cimg/node:16.18 .
docker build --file 16.18/browsers/Dockerfile -t cimg/node:16.18.0-browsers -t cimg/node:16.18-browsers .
docker build --file 18.11/Dockerfile -t cimg/node:18.11.0 -t cimg/node:18.11 .
docker build --file 18.11/browsers/Dockerfile -t cimg/node:18.11.0-browsers -t cimg/node:18.11-browsers .
docker build --file 18.12/Dockerfile -t cimg/node:18.12.0 -t cimg/node:18.12 .
docker build --file 18.12/browsers/Dockerfile -t cimg/node:18.12.0-browsers -t cimg/node:18.12-browsers .
docker build --file 19.0/Dockerfile -t cimg/node:19.0.0 -t cimg/node:19.0 .
docker build --file 19.0/browsers/Dockerfile -t cimg/node:19.0.0-browsers -t cimg/node:19.0-browsers .
