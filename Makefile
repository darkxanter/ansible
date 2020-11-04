USER := $(shell whoami)
GIT_BRANCH := $(shell git rev-parse --abbrev-ref HEAD | sed 's/\//-/g')
DOCKER_TAG := $(USER)/$(shell basename $(CURDIR)):$(GIT_BRANCH)

.PHONY: build
build:
	docker build -t $(DOCKER_TAG) .

.PHONY: shell
shell:
	docker run --rm -it $(DOCKER_TAG) /bin/sh

