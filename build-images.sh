#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 16.14/Dockerfile -t cimg/node:16.14.0  -t cimg/node:16.14  -t cimg/node:lts .
docker build --file 16.14/browsers/Dockerfile -t cimg/node:16.14.0-browsers  -t cimg/node:16.14-browsers  -t cimg/node:lts-browsers .
