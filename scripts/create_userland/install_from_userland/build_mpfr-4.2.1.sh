#!/bin/bash

set -euo pipefail

cd /sources

tar xf mpfr-4.2.1.tar.xz
pushd mpfr-4.2.1

echo "Building mpfr-4.2.1"

popd
rm -rf mpfr-4.2.1
