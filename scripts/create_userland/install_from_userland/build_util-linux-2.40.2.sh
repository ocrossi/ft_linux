#!/bin/bash

set -euo pipefail

cd /sources

tar xf util-linux-2.40.2.tar.xz
pushd util-linux-2.40.2

echo "Building util-linux-2.40.2"

popd
rm -rf util-linux-2.40.2
