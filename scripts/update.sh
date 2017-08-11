#!/usr/bin/env bash

set -Eeuo pipefail

username="noiselabs"
image="noiselabs/ghost-dev:latest"

docker build -t ${image} .

# Tag and push the image to Docker Hub
docker login -u ${username}
docker tag ${image} "${username}/${image}"
docker push ${image}
