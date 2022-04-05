#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 12.22/Dockerfile -t cimg/node:12.22.12  -t cimg/node:12.22 .
docker build --file 12.22/browsers/Dockerfile -t cimg/node:12.22.12-browsers  -t cimg/node:12.22-browsers .
