#!/usr/bin/env bash

set -Eeuo pipefail

username="noiselabs"
image="noiselabs/ghost-dev:latest"

docker build -t ${image} .
