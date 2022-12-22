#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 7.0/Dockerfile -t cimg/redis:7.0.7  -t cimg/redis:7.0 .
