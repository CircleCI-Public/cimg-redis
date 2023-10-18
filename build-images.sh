#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 7.2/Dockerfile -t cimg/redis:7.2.2 -t cimg/redis:7.2 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 7.0/Dockerfile -t cimg/redis:7.0.14 -t cimg/redis:7.0 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 6.2/Dockerfile -t cimg/redis:6.2.14 -t cimg/redis:6.2 --push .
