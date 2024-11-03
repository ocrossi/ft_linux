#!/bin/bash

set -euo pipefail

cd /sources

tar xf coreutils-9.5.tar.xz
pushd coreutils-9.5

echo "Building coreutils-9.5"

popd
rm -rf coreutils-9.5
