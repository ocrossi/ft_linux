#!/bin/bash

set -euo pipefail

cd /sources

tar xf kbd-2.6.4.tar.xz
pushd kbd-2.6.4

echo "Building kbd-2.6.4"

popd
rm -rf kbd-2.6.4
