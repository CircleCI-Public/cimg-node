#!/usr/bin/env bash

docker build --file /Dockerfile -t cimg/node:cd  -t cimg/node: .
docker build --file /browsers/Dockerfile -t cimg/node:cd-browsers  -t cimg/node:-browsers .
docker build --file /Dockerfile -t cimg/node:../..  -t cimg/node: .
docker build --file /browsers/Dockerfile -t cimg/node:../..-browsers  -t cimg/node:-browsers .
