# USER := $(shell whoami)
IMAGE_NAME := xanter/ansible
# GIT_BRANCH := $(shell git rev-parse --abbrev-ref HEAD | sed 's/\//-/g')
DOCKER_TAG := $(IMAGE_NAME)

.PHONY: build build_force shell

build:
#	docker build --pull-always --build-arg ANSIBLE_VERSION=$(VERSION) -t $(DOCKER_TAG) .
	docker build --pull-always -t $(DOCKER_TAG) .

shell:
	docker run --rm -it $(DOCKER_TAG) /bin/sh

