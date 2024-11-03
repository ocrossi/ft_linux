#!/bin/bash

set -euo pipefail

cd /sources

tar xf bzip2-1.0.8.tar.gz
pushd bzip2-1.0.8

echo "Building bzip2-1.0.8"

popd
rm -rf bzip2-1.0.8
