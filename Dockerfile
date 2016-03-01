FROM docker:1.9-dind
MAINTAINER Yves Serrano <y@yas.ch>
ENV DOCKER_COMPOSE_VERSION=1.5.1

RUN apk add --update \
        bash \
        python \
        py-pip \
        curl \
        git \
        git-perl \
        make \
        openssh-client \
        tar \
    && rm -rf /var/cache/apk/* && \
    pip install docker-compose==$DOCKER_COMPOSE_VERSION

ADD dockerd-entrypoint.sh /usr/local/bin/
