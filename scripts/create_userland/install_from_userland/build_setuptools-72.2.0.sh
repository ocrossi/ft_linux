#!/bin/bash

set -euo pipefail

cd /sources

tar xf setuptools-72.2.0.tar.gz
pushd setuptools-72.2.0

echo "Building setuptools-72.2.0"

popd
rm -rf setuptools-72.2.0
