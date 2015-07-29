NAME = alpine-dev
TAG = latest
IMAGE = gigablah/$(NAME)

.PHONY: all build push

all: build push

build:
	docker build -t $(IMAGE):$(TAG) --rm --no-cache .

push:
	docker push $(IMAGE)
