#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 18.0/Dockerfile -t cimg/node:18.0.0  -t cimg/node:18.0  -t cimg/node:current .
docker build --file 18.0/browsers/Dockerfile -t cimg/node:18.0.0-browsers  -t cimg/node:18.0-browsers  -t cimg/node:current-browsers .
