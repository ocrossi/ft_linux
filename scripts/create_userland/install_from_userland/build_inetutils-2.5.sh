#!/bin/bash

set -euo pipefail

cd /sources

tar xf inetutils-2.5.tar.xz
pushd inetutils-2.5

echo "Building inetutils-2.5"

popd
rm -rf inetutils-2.5
