FROM centos:7
LABEL maintainer="Jesse Stuart <hi@jessestuart.com>"

ARG VAGRANT_VERSION=2.0.1
ARG DOCKER_VERSION=17.12.0-ce-rc4
ARG DOCKER_COMPOSE_VERSION=1.18.0
ARG VAGRANT_CACHIER_PLUGIN_VERSION=1.2.1

ENV PACKAGES="\
  ansible \
  git \
  openssh-clients \
  python \
  "
ENV VAGRANT_URL="https://releases.hashicorp.com/vagrant/$VAGRANT_VERSION/vagrant_${VAGRANT_VERSION}_x86_64.rpm"
ENV DOCKER_URL="https://get.docker.com"

# Ugh, Vagrant won't let us do shell substitution in ENV vars.
RUN \
    export DOCKER_COMPOSE_URL="https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-$(uname -s)-$(uname -m)" \
    && yum update -y \
    && yum install -y $PACKAGES \
    && yum install -y $VAGRANT_URL \
    && vagrant plugin install vagrant-cachier \
    && curl -sL $DOCKER_URL | sh \
    && curl -sL $DOCKER_COMPOSE_URL -o /usr/bin/docker-compose \
    && chmod +x /usr/bin/docker-compose \
    && rm -rf /tmp/* /var/tmp/*
