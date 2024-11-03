#!/bin/bash

set -euo pipefail

cd /sources

tar xf libtool-2.4.7.tar.xz
pushd libtool-2.4.7

echo "Building libtool-2.4.7"

popd
rm -rf libtool-2.4.7
