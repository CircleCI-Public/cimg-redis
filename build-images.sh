#!/usr/bin/env bash

docker build --file 6.2/Dockerfile -t cimg/redis:6.2.6  -t cimg/redis:6.2 .
docker build --file 6.0/Dockerfile -t cimg/redis:6.0.16  -t cimg/redis:6.0 .
docker build --file 5.0/Dockerfile -t cimg/redis:5.0.14  -t cimg/redis:5.0 .
