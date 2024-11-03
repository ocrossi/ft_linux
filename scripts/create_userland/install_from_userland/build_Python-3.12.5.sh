#!/bin/bash

set -euo pipefail

cd /sources

tar xf Python-3.12.5.tar.xz
pushd Python-3.12.5

echo "Building Python-3.12.5"

popd
rm -rf Python-3.12.5
