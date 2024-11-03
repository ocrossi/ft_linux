#!/bin/bash

set -euo pipefail

cd /sources

tar xf findutils-4.10.0.tar.xz
pushd findutils-4.10.0

echo "Building findutils-4.10.0"

popd
rm -rf findutils-4.10.0
