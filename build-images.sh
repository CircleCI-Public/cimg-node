#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 12.22/Dockerfile -t cimg/node:12.22.11  -t cimg/node:12.22 .
docker build --file 12.22/browsers/Dockerfile -t cimg/node:12.22.11-browsers  -t cimg/node:12.22-browsers .
docker build --file 14.19/Dockerfile -t cimg/node:14.19.1  -t cimg/node:14.19 .
docker build --file 14.19/browsers/Dockerfile -t cimg/node:14.19.1-browsers  -t cimg/node:14.19-browsers .
docker build --file 16.14/Dockerfile -t cimg/node:16.14.2  -t cimg/node:16.14  -t cimg/node:lts .
docker build --file 16.14/browsers/Dockerfile -t cimg/node:16.14.2-browsers  -t cimg/node:16.14-browsers  -t cimg/node:lts-browsers .
docker build --file 17.7/Dockerfile -t cimg/node:17.7.2  -t cimg/node:17.7  -t cimg/node:current .
docker build --file 17.7/browsers/Dockerfile -t cimg/node:17.7.2-browsers  -t cimg/node:17.7-browsers  -t cimg/node:current-browsers .
