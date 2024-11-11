#!/bin/bash

set -euo pipefail

cd /sources

tar xf wheel-0.44.0.tar.gz
pushd wheel-0.44.0

echo "Building wheel-0.44.0"

pip3 wheel -w dist --no-cache-dir --no-build-isolation --no-deps $PWD
pip3 install --no-index --find-links dist setuptools

popd
rm -rf wheel-0.44.0
