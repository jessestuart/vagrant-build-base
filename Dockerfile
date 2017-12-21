FROM centos:7
LABEL maintainer="Jesse Stuart <hi@jessestuart.com>"

ARG VAGRANT_VERSION=2.0.1
ARG DOCKER_VERSION=17.05.0-ce
ARG DOCKER_COMPOSE_VERSION=1.13.0
ARG VAGRANT_CACHIER_PLUGIN_VERSION=1.2.1

ENV PACKAGES="git openssh-clients"
ENV VAGRANT_URL="https://releases.hashicorp.com/vagrant/$VAGRANT_VERSION/vagrant_${VAGRANT_VERSION}_x86_64.rpm"
ENV DOCKER_URL="https://get.docker.com/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz"

# Ugh, Vagrant won't let us do shell substitution in ENV vars.
RUN \
    export DOCKER_COMPOSE_URL="https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-$(uname -s)-$(uname -m)" \
    && yum install -y $PACKAGES \
    && yum install -y $VAGRANT_URL \
    && vagrant plugin install \
       vagrant-cachier --plugin-version $VAGRANT_CACHIER_PLUGIN_VERSION \
    && curl -sL $DOCKER_URL | tar -xz -C /tmp \
    && mv /tmp/docker/* /usr/bin \
    && rm -rf /tmp/docker \
    && curl -sL $DOCKER_COMPOSE_URL -o /usr/bin/docker-compose \
    && chmod +x /usr/bin/docker-compose
