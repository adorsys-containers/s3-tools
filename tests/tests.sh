#!/bin/bash

set -euo pipefail

docker run --rm "${DOCKER_IMAGE}:${TAG}" curl --version

docker run --rm "${DOCKER_IMAGE}:${TAG}" aws --version
docker run --rm "${DOCKER_IMAGE}:${TAG}" mc --version
docker run --rm "${DOCKER_IMAGE}:${TAG}" s3cmd --version
