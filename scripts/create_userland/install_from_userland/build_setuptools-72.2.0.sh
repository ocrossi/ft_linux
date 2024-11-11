#!/bin/bash

set -euo pipefail

cd /sources

tar xf setuptools-72.2.0.tar.gz
pushd setuptools-72.2.0

echo "Building setuptools-72.2.0"

pip3 wheel -w dist --no-cache-dir --no-build-isolation --no-deps $PWD
pip3 install --no-index --find-links dist setuptools

popd
rm -rf setuptools-72.2.0
