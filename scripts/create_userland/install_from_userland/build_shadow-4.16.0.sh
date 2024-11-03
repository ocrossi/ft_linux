#!/bin/bash

set -euo pipefail

cd /sources

tar xf shadow-4.16.0.tar.xz
pushd shadow-4.16.0

echo "Building shadow-4.16.0"

popd
rm -rf shadow-4.16.0
