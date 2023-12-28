.PHONY: image

IMAGE_NAME = "ghcr.io/troydai/toolbox"

image:
	@ echo "Building image $(IMAGE_NAME):latest"
	@ docker build -q -t $(IMAGE_NAME):latest .

sanity-test: image
	@ echo "Running sanity test locally"
	@ docker run --rm --entrypoint '' $(IMAGE_NAME):latest curl -s www.httpbin.org/ip

sanity-sh: image
	@ echo "Running a sh shell in the container for testing locally"
	@ docker run --rm -it --entrypoint 'sh' $(IMAGE_NAME):latest
