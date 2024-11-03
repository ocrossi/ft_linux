#!/bin/bash

set -euo pipefail

cd /sources

tar xf perl-5.40.0.tar.xz
pushd perl-5.40.0

echo "Building perl-5.40.0"

popd
rm -rf perl-5.40.0
