#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 6.0/Dockerfile -t cimg/redis:6.0.18 -t cimg/redis:6.0 --platform linux/amd64 .
docker build --file 6.2/Dockerfile -t cimg/redis:6.2.11 -t cimg/redis:6.2 --platform linux/amd64 .
