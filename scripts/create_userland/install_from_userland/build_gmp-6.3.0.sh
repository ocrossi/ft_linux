#!/bin/bash

set -euo pipefail

cd /sources

tar xf gmp-6.3.0.tar.xz
pushd gmp-6.3.0

echo "Building gmp-6.3.0"

popd
rm -rf gmp-6.3.0
