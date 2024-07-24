# Use Dockerfile syntax version 1
# Reference: https://docs.docker.com/engine/reference/builder/#syntax
# syntax=docker/dockerfile:1

# Use Ubuntu 22.04 as the base image
FROM ubuntu:22.04

# Set image labels for metadata
LABEL maintainer="Lally Elias <lallyelias87@gmail.com>" \
  vendor="lykmapipo"

# Set environment variables
# - LANG, LC_ALL: Set locale to C.UTF-8 to ensure consistent locale settings
# - USER_UID, USER_GID: Default UID and GID for user and group, useful for user permissions
# - USER_NAME, USER_GROUP: Default username and group name for user creation
# - DEBIAN_FRONTEND: Set to noninteractive to disable prompts during package installation
ENV LANG=C.UTF-8 \
  LC_ALL=C.UTF-8 \
  USER_UID=1000 \
  USER_GID=1000 \
  USER_NAME=ubuntu \
  USER_GROUP=ubuntu \
  DEBIAN_FRONTEND=noninteractive

# Update package lists, install essential packages, and clean up to reduce image size
# - apt-transport-https: Allows APT to use HTTPS for fetching packages
# - ca-certificates: Provides CA certificates for secure HTTPS connections
# - gnupg: Provides tools for managing cryptographic keys and secure communication
# - locales: Provides locale data for localizing the system
# - openssl: Provides tools for cryptographic operations and SSL/TLS support
# - procps: Provides utilities for monitoring and managing system processes
# - sudo: Allows users to execute commands with elevated privileges
# - tzdata: Provides time zone data for accurate date and time settings
# - --fix-missing: Fixes missing dependencies during package installation
# - --no-install-recommends: Prevents the installation of recommended but unnecessary packages
# hadolint ignore=DL3008
RUN set -eux; \
    apt-get update; \
    apt-get install -y --fix-missing --no-install-recommends \
        apt-transport-https \
        ca-certificates \
        gnupg \
        locales \
        openssl \
        procps \
        sudo \
        tzdata \
    ; \
    apt-get -y autoremove; \
    apt-get -y autoclean; \
    rm -rf /var/lib/apt/lists/*

# Generate locale en_US.UTF-8 and update locale settings
# This ensures that applications using locale-specific features will use UTF-8 encoding
RUN locale-gen en_US.UTF-8 && \
    update-locale LANG=en_US.UTF-8
ENV LANG=en_US.UTF-8 \
    LC_ALL=en_US.UTF-8 \
    LANGUAGE=en_US:en \
    TZ=UTC

# Expose common ports
# - 22: SSH port
EXPOSE 22

# Set the default command to start a bash shell
# This allows interactive use of the container or running commands
CMD ["bash"]
