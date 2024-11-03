#!/bin/bash

set -euo pipefail

cd /sources

tar xf gettext-0.22.5.tar.xz
pushd gettext-0.22.5

echo "Building gettext-0.22.5"

popd
rm -rf gettext-0.22.5
