#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 7.99/Dockerfile -t cimg/redis:7.99.3 -t cimg/redis:7.99 --push .
