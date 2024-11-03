#!/bin/bash

set -euo pipefail

cd /sources

tar xf meson-1.5.1.tar.gz
pushd meson-1.5.1

echo "Building meson-1.5.1"

popd
rm -rf meson-1.5.1
