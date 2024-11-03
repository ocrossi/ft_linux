#!/bin/bash

set -euo pipefail

cd /sources

tar xf wheel-0.44.0.tar.gz
pushd wheel-0.44.0

echo "Building wheel-0.44.0"

popd
rm -rf wheel-0.44.0
