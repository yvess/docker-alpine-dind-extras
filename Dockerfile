FROM docker:1.8-dind
MAINTAINER Yves Serrano <y@yas.ch>
ENV DOCKER_COMPOSE_VERSION=1.4.2

RUN apk add --update \
        bash \
        python \
        py-pip \
        curl \
    && rm -rf /var/cache/apk/* && \
    pip install docker-compose==$DOCKER_COMPOSE_VERSION
