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
	@make docker/pull/linter


.PHONY: docker/pull/ubuntu  ## Pull ubuntu docker images
docker/pull/ubuntu:
	docker pull ubuntu:22.10
	docker pull ubuntu:22.04
	docker pull ubuntu:20.04
	docker pull ubuntu:18.04
	docker pull ubuntu:latest


.PHONY: docker/pull/debian  ## Pull debian slim docker images
docker/pull/debian:
	docker pull debian:11-slim
	docker pull debian:10-slim
	docker pull debian:latest


.PHONY: docker/pull/java-jdk  ## Pull java jdk docker images
docker/pull/java-jdk:
	docker pull eclipse-temurin:19-jdk-jammy
	docker pull eclipse-temurin:18-jdk-jammy


.PHONY: docker/pull/java-jre  ## Pull java jre docker images
docker/pull/java-jre:
	docker pull eclipse-temurin:19-jre-jammy
	docker pull eclipse-temurin:18-jre-jammy


.PHONY: docker/pull/linter  ## Pull linter docker images i.e hadolint etc
docker/pull/linter:
	docker pull hadolint/hadolint:latest
	# docker pull gcr.io/gcp-runtimes/container-structure-test:latest


.PHONY: clean  ## Clean ubuntu images
clean: clean/dev/ubuntu


.PHONY: clean/dev/ubuntu  ## Clean ubuntu dev images
clean/dev/ubuntu:
	docker image rm -f $(shell docker image ls ${IMAGE_VENDOR}/${UBUNTU_OS_DEV_TAG}:${IMAGE_VERSION} -a -q)


.PHONY: help  ## Display this message
help:
	@grep -E \
		'^.PHONY: .*?## .*$$' $(MAKEFILE_LIST) | \
		sort | \
		awk 'BEGIN {FS = ".PHONY: |## "}; {printf "\033[36m%-19s\033[0m %s\n", $$2, $$3}'
