#!/bin/bash

set -euo pipefail

cd /sources

tar xf sed-4.9.tar.xz
pushd sed-4.9

echo "Building sed-4.9"

popd
rm -rf sed-4.9
