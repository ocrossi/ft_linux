#!/bin/bash

set -euo pipefail

cd /sources

tar xf grub-2.12.tar.xz
pushd grub-2.12

echo "Building grub-2.12"

popd
rm -rf grub-2.12
