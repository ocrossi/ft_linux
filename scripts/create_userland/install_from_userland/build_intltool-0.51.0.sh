#!/bin/bash

set -euo pipefail

cd /sources

tar xf intltool-0.51.0.tar.gz
pushd intltool-0.51.0

echo "Building intltool-0.51.0"

popd
rm -rf intltool-0.51.0
