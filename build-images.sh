#!/usr/bin/env bash

docker build --file 12.19/browsers/Dockerfile -t cimg/node:12.19.0-browsers  -t cimg/node:12.19-browsers .
