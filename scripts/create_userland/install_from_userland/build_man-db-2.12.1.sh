#!/bin/bash

set -euo pipefail

cd /sources

tar xf man-db-2.12.1.tar.xz
pushd man-db-2.12.1

echo "Building man-db-2.12.1"

popd
rm -rf man-db-2.12.1
