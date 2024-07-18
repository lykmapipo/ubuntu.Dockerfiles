# syntanx=docker/dockerfile:1

# Use Ubuntu 22.04 as the base image
FROM ubuntu:22.04

# Set image labels
LABEL maintainer="Lally Elias <lallyelias87@gmail.com>" \
  vendor="lykmapipo"

# Set environment variables
ENV LANG=C.UTF-8 \
  LC_ALL=C.UTF-8 \
  DEBIAN_FRONTEND=noninteractive

# Update package lists and install runtime dependencies
# hadolint ignore=DL3008
RUN set -eux; \
    apt-get update; \
    apt-get install -y --fix-missing --no-install-recommends \
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
        vim \
        wget \
    ; \
    apt-get -y autoremove; \
    apt-get -y autoclean; \
    rm -rf /var/lib/apt/lists/*

# Expose common ports
EXPOSE 22

# Drop into bash on exec
CMD ["bash"]
