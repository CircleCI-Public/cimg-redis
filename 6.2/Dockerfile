FROM cimg/base:2021.10

LABEL maintainer="Community & Partner Engineering Team <community-partner@circleci.com>"

ENV REDIS_VERSION=6.2.6

USER root

RUN groupadd -r -g 1337 redis && useradd -r -g redis -u 1337 redis

RUN apt-get update && \
    apt-get install -y gosu

RUN curl -sSL https://download.redis.io/releases/redis-${REDIS_VERSION}.tar.gz | tar -xz && \
    cd redis-${REDIS_VERSION} && \
    make && \
    make install

EXPOSE 6379

CMD ["redis-server", "--protected-mode", "no"]