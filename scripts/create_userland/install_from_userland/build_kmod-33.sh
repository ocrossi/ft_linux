#!/bin/bash

set -euo pipefail

cd /sources

tar xf kmod-33.tar.xz
pushd kmod-33

echo "Building kmod-33"

popd
rm -rf kmod-33
