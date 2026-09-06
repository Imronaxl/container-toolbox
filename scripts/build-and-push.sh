#!/usr/bin/env bash
set -euo pipefail

IMAGE=imeon/hello-app
TAG=1.0.0

docker build -t "${IMAGE}:${TAG}" .
docker tag  "${IMAGE}:${TAG}" "${IMAGE}:latest"
docker push "${IMAGE}:${TAG}"
docker push "${IMAGE}:latest"
