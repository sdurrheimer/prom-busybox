#!/usr/bin/env bash

set -e

source vars.sh

for version in "${versions[@]}"; do
  docker build -t "${IMAGE_NAME}:${version}${SUFFIX}" ${version}
done
