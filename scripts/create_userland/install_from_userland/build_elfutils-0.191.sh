#!/bin/bash

set -euo pipefail

cd /sources

tar xf elfutils-0.191.tar.bz2
pushd elfutils-0.191

echo "Building elfutils-0.191"

popd
rm -rf elfutils-0.191
