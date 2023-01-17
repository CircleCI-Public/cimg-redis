#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 6.0/Dockerfile -t cimg/redis:6.0.17  -t cimg/redis:6.0 .
docker build --file 6.2/Dockerfile -t cimg/redis:6.2.10  -t cimg/redis:6.2 .
