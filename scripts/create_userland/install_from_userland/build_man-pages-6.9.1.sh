#!/bin/bash

set -euo pipefail

cd /sources

tar xf man-pages-6.9.1.tar.xz
pushd man-pages-6.9.1

echo "Building man-pages-6.9.1"

popd
rm -rf man-pages-6.9.1
