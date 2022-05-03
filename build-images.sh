#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 12.13/Dockerfile -t cimg/node:12.13.1  -t cimg/node:12.13 .
docker build --file 12.13/browsers/Dockerfile -t cimg/node:12.13.1-browsers  -t cimg/node:12.13-browsers .
