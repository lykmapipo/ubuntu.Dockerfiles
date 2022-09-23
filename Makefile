.PHONY: docker-pull

# default goal
all: docker-pull

# pull common base/official os images
docker-pull: docker-pull-ubuntu docker-pull-debian

# pull base/official ubuntu os images
docker-pull-ubuntu:
	docker pull ubuntu:22.10
	docker pull ubuntu:22.04
	docker pull ubuntu:20.04
	docker pull ubuntu:18.04
	docker pull ubuntu:latest

# pull base/official slim debian os images
docker-pull-debian:
	docker pull debian:11-slim
	docker pull debian:10-slim
	docker pull debian:latest
