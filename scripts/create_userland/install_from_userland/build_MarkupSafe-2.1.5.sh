#!/bin/bash

set -euo pipefail

cd /sources

tar xf MarkupSafe-2.1.5.tar.gz
pushd MarkupSafe-2.1.5

echo "Building MarkupSafe-2.1.5"

pip3 wheel -w dist --no-cache-dir --no-build-isolation --no-deps $PWD
pip3 install --no-index --no-user --find-links dist Markupsafe

popd
rm -rf MarkupSafe-2.1.5
