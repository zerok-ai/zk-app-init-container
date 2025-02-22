NAME = init-container
IMAGE_PREFIX = us-west1-docker.pkg.dev/zerok-dev/stage
IMAGE_NAME = init-container
IMAGE_VERSION = redis-namechange

export GO111MODULE=on

buildAndPush: docker-build docker-push

docker-build:
	docker build --no-cache -t $(IMAGE_PREFIX)/$(IMAGE_NAME):$(IMAGE_VERSION) .
	
docker-push:
	docker push $(IMAGE_PREFIX)/$(IMAGE_NAME):$(IMAGE_VERSION)

# ------- CI-CD ------------
ci-cd-build:
	echo "ci-cd-build: nothing to build here"
