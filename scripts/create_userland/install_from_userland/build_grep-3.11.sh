#!/bin/bash

set -euo pipefail

cd /sources

tar xf grep-3.11.tar.xz
pushd grep-3.11

echo "Building grep-3.11"

popd
rm -rf grep-3.11
