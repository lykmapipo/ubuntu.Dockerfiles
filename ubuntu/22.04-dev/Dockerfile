# syntanx=docker/dockerfile:1

# choose base images
# choose base images
FROM ubuntu:22.04

# set image labels
LABEL maintainer="Lally Elias <lallyelias87@gmail.com>" \
  vendor="lykmapipo"

# set environment variables
ENV LANG=C.UTF-8 \
  LC_ALL=C.UTF-8

# update and install runtime dependencies
# hadolint ignore=DL3008
RUN set -eux; \
    apt-get update; \
    apt-get install -y --no-install-recommends \
        procps \
        ca-certificates \
        gcc \
        make \
        wget \
        curl \
        vim \
        git \
        gnupg \
        build-essential \
    ; \
    apt-get -y autoremove; \
    apt-get -y autoclean; \
    rm -rf /var/lib/apt/lists/*

# expose common ports
EXPOSE 22

# drop into bash on exec
CMD ["bash"]
