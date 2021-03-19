#!/usr/bin/env bash


docker build --file 15.12/Dockerfile -t cimg/node:15.12.0  -t cimg/node:15.12  -t cimg/node:current .
docker build --file 15.12/browsers/Dockerfile -t cimg/node:15.12.0-browsers  -t cimg/node:15.12-browsers  -t cimg/node:current-browsers .
