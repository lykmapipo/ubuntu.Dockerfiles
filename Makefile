# Set environment variables
export UBUNTU_OS_NAME ?= ubuntu
export UBUNTU_OS_VERSION ?= 22.04
export UBUNTU_OS_BASE_TAG ?= ${UBUNTU_OS_NAME}-${UBUNTU_OS_VERSION}-base
export UBUNTU_OS_DEV_TAG ?= ${UBUNTU_OS_NAME}-${UBUNTU_OS_VERSION}-dev
export UBUNTU_OS_PROD_TAG ?= ${UBUNTU_OS_NAME}-${UBUNTU_OS_VERSION}-prod
export DOCKER_BUILDKIT ?= 1
export IMAGE_VENDOR ?= lykmapipo
export IMAGE_VERSION ?= v0.1.0

.DEFAULT_GOAL := help

.PHONY: build  ## Build ubuntu images for experimentation
build: build/base build/dev

.PHONY: build/dev  ## Build ubuntu dev image for experimentation
build/dev:
	docker build -t ${IMAGE_VENDOR}/${UBUNTU_OS_DEV_TAG}:${IMAGE_VERSION} ./${UBUNTU_OS_VERSION}-dev

.PHONY: run/dev  ## Run ubuntu dev image for experimentation
run/dev:
	docker run --name ${UBUNTU_OS_DEV_TAG} -it --rm ${IMAGE_VENDOR}/${UBUNTU_OS_DEV_TAG}:${IMAGE_VERSION}

.PHONY: build/base  ## Build ubuntu base (bare) image for experimentation
build/base:
	docker build -t ${IMAGE_VENDOR}/${UBUNTU_OS_BASE_TAG}:${IMAGE_VERSION} ./${UBUNTU_OS_VERSION}-base

.PHONY: run/base  ## Run ubuntu base (bare) image for experimentation
run/base:
	docker run --name ${UBUNTU_OS_BASE_TAG} -it --rm ${IMAGE_VENDOR}/${UBUNTU_OS_BASE_TAG}:${IMAGE_VERSION}

.PHONY: lint  ## Lint dockerfiles
lint: lint/base lint/dev

.PHONY: lint/dev  ## Lint dev dockerfiles
lint/dev:
	docker run --rm -i hadolint/hadolint < ./${UBUNTU_OS_VERSION}-dev/Dockerfile

.PHONY: lint/base  ## Lint base dockerfiles
lint/base:
	docker run --rm -i hadolint/hadolint < ./${UBUNTU_OS_VERSION}-base/Dockerfile

.PHONY: pull  ## Pull docker images i.e ubuntu, linter etc
pull: pull/ubuntu pull/linter clean/dangling

.PHONY: pull/ubuntu  ## Pull ubuntu docker images
pull/ubuntu:
	docker pull ubuntu:24.04
	docker pull ubuntu:22.04
	docker pull ubuntu:20.04

.PHONY: pull/linter  ## Pull linter docker images i.e hadolint etc
pull/linter:
	docker pull hadolint/hadolint:latest
	docker pull gcr.io/gcp-runtimes/container-structure-test:latest

.PHONY: clean  ## Clean docker images
clean: clean/base clean/dev clean/dangling

.PHONY: clean/dev  ## Clean dev images
clean/dev:
	docker image ls ${IMAGE_VENDOR}/${UBUNTU_OS_DEV_TAG}:${IMAGE_VERSION} -a -q | xargs -L1 -r -t docker rmi

.PHONY: clean/base  ## Clean base images
clean/base:
	docker image ls ${IMAGE_VENDOR}/${UBUNTU_OS_BASE_TAG}:${IMAGE_VERSION} -a -q | xargs -L1 -r -t docker rmi

.PHONY: clean/dangling  ## Clean dangling images
clean/dangling:
	docker image ls --filter "dangling=true" -a -q | xargs -L1 -r -t docker rmi

.PHONY: help  ## Display this message
help:
	@grep -E \
		'^.PHONY: .*?## .*$$' $(MAKEFILE_LIST) | \
		sort | \
		awk 'BEGIN {FS = ".PHONY: |## "}; {printf "\033[36m%-19s\033[0m %s\n", $$2, $$3}'
