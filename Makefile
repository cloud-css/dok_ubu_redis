CURRENT_DIRECTORY := $(shell pwd)

build:
	@docker build --tag=cloud-css/redis $(CURRENT_DIRECTORY)

build-no-cache:
	@docker build --no-cache --tag=cloud-css/redis $(CURRENT_DIRECTORY)

.PHONY: build build-no-cache