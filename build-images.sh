#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 8.10/Dockerfile -t cimg/redis:8.10.3 -t cimg/redis:8.10 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 8.8/Dockerfile -t cimg/redis:8.8.4 -t cimg/redis:8.8 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 8.6/Dockerfile -t cimg/redis:8.6.8 -t cimg/redis:8.6 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 8.4/Dockerfile -t cimg/redis:8.4.8 -t cimg/redis:8.4 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 8.2/Dockerfile -t cimg/redis:8.2.11 -t cimg/redis:8.2 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 7.4/Dockerfile -t cimg/redis:7.4.12 -t cimg/redis:7.4 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 7.2/Dockerfile -t cimg/redis:7.2.17 -t cimg/redis:7.2 --push .
