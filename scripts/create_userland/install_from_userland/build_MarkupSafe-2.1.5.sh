#!/bin/bash

set -euo pipefail

cd /sources

tar xf MarkupSafe-2.1.5.tar.gz
pushd MarkupSafe-2.1.5

echo "Building MarkupSafe-2.1.5"

popd
rm -rf MarkupSafe-2.1.5
