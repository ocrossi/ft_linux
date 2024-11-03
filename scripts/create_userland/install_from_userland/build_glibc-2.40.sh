#!/bin/bash

set -euo pipefail

cd /sources

tar xf glibc-2.40.tar.xz
pushd glibc-2.40

echo "Building glibc-2.40"

popd
rm -rf glibc-2.40
