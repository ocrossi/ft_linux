#!/bin/bash

set -euo pipefail

cd /sources

tar xf diffutils-3.10.tar.xz
pushd diffutils-3.10

echo "Building diffutils-3.10"

popd
rm -rf diffutils-3.10
