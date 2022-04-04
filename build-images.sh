#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 17.8/Dockerfile -t cimg/node:17.8.0  -t cimg/node:17.8  -t cimg/node:current .
docker build --file 17.8/browsers/Dockerfile -t cimg/node:17.8.0-browsers  -t cimg/node:17.8-browsers  -t cimg/node:current-browsers .

echo "test"