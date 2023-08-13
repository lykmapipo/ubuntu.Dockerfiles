# syntanx=docker/dockerfile:1

# choose base images
FROM ubuntu:22.04

# set image labels
LABEL maintainer="Lally Elias <lallyelias87@gmail.com>" \
  vendor="lykmapipo"

# set environment variables
ENV LANG=C.UTF-8 \
  LC_ALL=C.UTF-8 \
  DEBIAN_FRONTEND=noninteractive

# update and install runtime dependencies
# hadolint ignore=DL3008
RUN set -eux; \
    apt-get update; \
    apt-get install -y --no-install-recommends \
        build-essential \
        ca-certificates \
        curl \
        gcc \
        git \
        gnupg \
        make \
        netbase \
        openssh-client \
        procps \
        # tzdata \
        vim \
        wget \
    ; \
    apt-get -y autoremove; \
    apt-get -y autoclean; \
    rm -rf /var/lib/apt/lists/*

# expose common ports
EXPOSE 22

# drop into bash on exec
CMD ["bash"]
