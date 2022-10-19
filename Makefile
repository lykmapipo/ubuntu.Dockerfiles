# set environment variables
export UBUNTU_OS_NAME ?= ubuntu
export UBUNTU_OS_VERSION ?= 22.04
export UBUNTU_OS_DEV_TAG ?= ${UBUNTU_OS_NAME}-${UBUNTU_OS_VERSION}-dev
export UBUNTU_OS_PROD_TAG ?= ${UBUNTU_OS_NAME}-${UBUNTU_OS_VERSION}-prod
export DOCKER_BUILDKIT ?= 1
export IMAGE_VENDOR ?= lykmapipo
export IMAGE_VERSION ?= v0.1.0


.DEFAULT_GOAL := help


build/dev/ubuntu: ## Build ubuntu dev image for experimentation
	docker build -t ${IMAGE_VENDOR}/${UBUNTU_OS_DEV_TAG}:${IMAGE_VERSION} ./ubuntu/${UBUNTU_OS_VERSION}-dev


run/dev/ubuntu: ## Run ubuntu dev image for experimentation
	docker run -it --rm ${IMAGE_VENDOR}/${UBUNTU_OS_DEV_TAG}:${IMAGE_VERSION}


.PHONY: docker/pull/os
docker/pull/os: ## Pull base operating system docker images
	@make docker/pull/ubuntu
	@make docker/pull/debian


.PHONY: docker/pull/ubuntu
docker/pull/ubuntu: ## Pull ubuntu docker images
	docker pull ubuntu:22.10
	docker pull ubuntu:22.04
	docker pull ubuntu:20.04
	docker pull ubuntu:18.04
	docker pull ubuntu:latest


.PHONY: docker/pull/debian
docker/pull/debian: ## Pull debian slim docker images
	docker pull debian:11-slim
	docker pull debian:10-slim
	docker pull debian:latest


.PHONY: clean
clean: clean/dev/ubuntu


.PHONY: clean/dev/ubuntu
clean/dev/ubuntu: ## Clean ubuntu dev images
	docker image rm -f $(shell docker image ls ${IMAGE_VENDOR}/${UBUNTU_OS_DEV_TAG}:${IMAGE_VERSION} -a -q)


.PHONY: help
help: ## Show this message and exit
	@echo 'Usage: make [target] ...'
	@echo ''
	@echo 'Targets:'
	@sed -ne '/@sed/!s/## //p' $(MAKEFILE_LIST)
	@echo ''
