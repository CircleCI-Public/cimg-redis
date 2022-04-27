# vim:set ft=dockerfile:

# Do not edit individual Dockerfiles manually. Instead, please make changes to the Dockerfile.template, which will be used by the build script to generate Dockerfiles.

FROM cimg/base:2022.01

LABEL maintainer="Community & Partner Engineering Team <community-partner@circleci.com>"

ENV REDIS_VERSION=7.0.0

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