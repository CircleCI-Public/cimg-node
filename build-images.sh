#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 16.15/Dockerfile -t cimg/node:16.15.0  -t cimg/node:16.15  -t cimg/node:lts .
docker build --file 16.15/browsers/Dockerfile -t cimg/node:16.15.0-browsers  -t cimg/node:16.15-browsers  -t cimg/node:lts-browsers .
