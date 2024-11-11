#!/bin/bash

set -euo pipefail

cd /sources

tar xf flit_core-3.9.0.tar.gz
pushd flit_core-3.9.0

echo "Building flit_core-3.9.0"

pip3 wheel -w dist --no-cache-dir --no-build-isolation --no-deps $PWD
pip3 install --no-index --no-user --find-links dist flit_core




popd
rm -rf flit_core-3.9.0
