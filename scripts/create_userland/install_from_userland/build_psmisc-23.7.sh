#!/bin/bash

set -euo pipefail

cd /sources

tar xf psmisc-23.7.tar.xz
pushd psmisc-23.7

echo "Building psmisc-23.7"

popd
rm -rf psmisc-23.7
