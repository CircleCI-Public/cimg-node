#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 18.2/Dockerfile -t cimg/node:18.2.0  -t cimg/node:18.2  -t cimg/node:current .
docker build --file 18.2/browsers/Dockerfile -t cimg/node:18.2.0-browsers  -t cimg/node:18.2-browsers  -t cimg/node:current-browsers .
