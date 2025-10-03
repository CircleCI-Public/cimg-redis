#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 7.2/Dockerfile -t cimg/redis:7.2.11 -t cimg/redis:7.2 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 6.2/Dockerfile -t cimg/redis:6.2.20 -t cimg/redis:6.2 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 8.2/Dockerfile -t cimg/redis:8.2.2 -t cimg/redis:8.2 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 8.0/Dockerfile -t cimg/redis:8.0.4 -t cimg/redis:8.0 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 7.4/Dockerfile -t cimg/redis:7.4.6 -t cimg/redis:7.4 --push .
