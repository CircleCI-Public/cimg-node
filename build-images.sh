#!/usr/bin/env bash

docker build --file 12.15/browsers/Dockerfile -t cimg/node:12.15.0-browsers  -t cimg/node:12.15-browsers .
