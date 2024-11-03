#!/bin/bash

set -euo pipefail

cd /sources

tar xf e2fsprogs-1.47.1.tar.gz
pushd e2fsprogs-1.47.1

echo "Building e2fsprogs-1.47.1"

popd
rm -rf e2fsprogs-1.47.1
