# set environment variables
export UBUNTU_OS_NAME ?= ubuntu
export UBUNTU_OS_VERSION ?= 22.04
export UBUNTU_OS_DEV_TAG ?= ${UBUNTU_OS_NAME}-${UBUNTU_OS_VERSION}-dev
export UBUNTU_OS_PROD_TAG ?= ${UBUNTU_OS_NAME}-${UBUNTU_OS_VERSION}-prod
export DOCKER_BUILDKIT ?= 1
export IMAGE_VENDOR ?= lykmapipo
export IMAGE_VERSION ?= v0.1.0


.DEFAULT_GOAL := help

.PHONY: build/dev/ubuntu  ## Build ubuntu dev image for experimentation
build/dev/ubuntu:
	docker build -t ${IMAGE_VENDOR}/${UBUNTU_OS_DEV_TAG}:${IMAGE_VERSION} ./ubuntu/${UBUNTU_OS_VERSION}-dev


.PHONY: run/dev/ubuntu  ## Run ubuntu dev image for experimentation
run/dev/ubuntu:
	docker run --name ${UBUNTU_OS_DEV_TAG} -it --rm ${IMAGE_VENDOR}/${UBUNTU_OS_DEV_TAG}:${IMAGE_VERSION}


.PHONY: lint  ## Lint dockerfiles
lint: lint/dev/ubuntu


.PHONY: lint/dev/ubuntu  ## Lint ubuntu dev dockerfile
lint/dev/ubuntu:
	docker run --rm -i hadolint/hadolint < ./ubuntu/${UBUNTU_OS_VERSION}-dev/Dockerfile


.PHONY: docker/pull/os  ## Pull base docker images i.e os, linter etc
docker/pull/os:
	@make docker/pull/ubuntu
	@make docker/pull/debian
	@make docker/pull/alpine
	@make docker/pull/java
	@make docker/pull/linter
	@make clean/dangling


.PHONY: docker/pull/ubuntu  ## Pull ubuntu docker images
docker/pull/ubuntu:
	docker pull ubuntu:22.04


.PHONY: docker/pull/debian  ## Pull debian slim docker images
docker/pull/debian:
	docker pull debian:12-slim


.PHONY: docker/pull/alpine  ## Pull alpine docker images
docker/pull/alpine:
	docker pull alpine:3.19


.PHONY: docker/pull/java  ## Pull java jdk and jre docker images
docker/pull/java:
	docker pull eclipse-temurin:17-jdk-jammy
	docker pull eclipse-temurin:17-jre-jammy


.PHONY: docker/pull/linter  ## Pull linter docker images i.e hadolint etc
docker/pull/linter:
	docker pull hadolint/hadolint:latest
	# docker pull gcr.io/gcp-runtimes/container-structure-test:latest


.PHONY: clean  ## Clean docker images
clean: clean/dev/ubuntu clean/dangling


.PHONY: clean/dev/ubuntu  ## Clean ubuntu dev images
clean/dev/ubuntu:
	docker image ls ${IMAGE_VENDOR}/${UBUNTU_OS_DEV_TAG}:${IMAGE_VERSION} -a -q | xargs -L1 -r -t docker rmi


.PHONY: clean/dangling  ## Clean dangling images
clean/dangling:
	docker image ls --filter "dangling=true" --quiet | xargs -L1 -r -t docker rmi


.PHONY: help  ## Display this message
help:
	@grep -E \
		'^.PHONY: .*?## .*$$' $(MAKEFILE_LIST) | \
		sort | \
		awk 'BEGIN {FS = ".PHONY: |## "}; {printf "\033[36m%-19s\033[0m %s\n", $$2, $$3}'
