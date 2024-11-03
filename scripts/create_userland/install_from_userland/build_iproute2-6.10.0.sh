#!/bin/bash

set -euo pipefail

cd /sources

tar xf iproute2-6.10.0.tar.xz
pushd iproute2-6.10.0

echo "Building iproute2-6.10.0"

popd
rm -rf iproute2-6.10.0
