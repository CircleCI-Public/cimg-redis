# vim:set ft=dockerfile:

# Do not edit individual Dockerfiles manually. Instead, please make changes to the Dockerfile.template, which will be used by the build script to generate Dockerfiles.

# By policy, the base image tag should be a quarterly tag unless there's a
# specific reason to use a different one. This means January, April, July, or
# October.

FROM cimg/base:2024.02

LABEL maintainer="CircleCI Execution Team <eng-execution@circleci.com>"

ENV REDIS_VERSION=7.4.1

USER root

RUN groupadd -r -g 1337 redis && useradd -r -g redis -u 1337 redis && \
    apt-get update && \
    apt-get install -y gosu && \
    rm -rf /var/lib/apt/lists/*

RUN curl -sSL https://download.redis.io/releases/redis-${REDIS_VERSION}.tar.gz | tar -xz && \
    cd redis-${REDIS_VERSION} && \
    make && \
    make install && \
    redis-server --version | grep "${REDIS_VERSION}"

EXPOSE 6379

CMD ["redis-server", "--protected-mode", "no"]
