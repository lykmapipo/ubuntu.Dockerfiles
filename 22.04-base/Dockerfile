# syntanx=docker/dockerfile:1

# Use Ubuntu 22.04 as the base image
FROM ubuntu:22.04

# Set image labels
LABEL maintainer="Lally Elias <lallyelias87@gmail.com>" \
  vendor="lykmapipo"

# Set environment variables
# - LANG, LC_ALL: Set locale to C.UTF-8 for consistency
# - USER_UID, USER_GID: Set default UID and GID for the user
# - USER_NAME, USER_GROUP: Set default username and group name
# - DEBIAN_FRONTEND: Non-interactive mode for automated installs
ENV LANG=C.UTF-8 \
  LC_ALL=C.UTF-8 \
  USER_UID=1000 \
  USER_GID=1000 \
  USER_NAME=ubuntu \
  USER_GROUP=ubuntu \
  DEBIAN_FRONTEND=noninteractive

# Update package lists and install runtime dependencies
# - procps: Utilities for monitoring system processes
# - sudo: Allow permitted user to perform administrative tasks
# Clean up APT cache to reduce image size
# hadolint ignore=DL3008
RUN set -eux; \
    apt-get update; \
    apt-get install -y --fix-missing --no-install-recommends \
        procps \
        sudo \
    ; \
    apt-get -y autoremove; \
    apt-get -y autoclean; \
    rm -rf /var/lib/apt/lists/*

# Expose common ports
# - 22: SSH port
EXPOSE 22

# Set the default command to start a bash shell
CMD ["bash"]
