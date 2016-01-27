#!/usr/bin/env bash

set -e

source vars.sh

for version in "${versions[@]}"; do
  docker build -t "${IMAGE_NAME}:${version}${SUFFIX}-builder" --pull -f "${version}/Dockerfile.builder" ${version}
  docker run --rm "${IMAGE_NAME}:${version}${SUFFIX}-builder" tar cC rootfs . | xz -z9 > "${version}/rootfs.tar.xz"
done
