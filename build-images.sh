#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 17.7/Dockerfile -t cimg/node:17.7.1  -t cimg/node:17.7  -t cimg/node:current .
docker build --file 17.7/browsers/Dockerfile -t cimg/node:17.7.1-browsers  -t cimg/node:17.7-browsers  -t cimg/node:current-browsers .
