#!/bin/bash

set -euo pipefail
cd /mnt/lfs/sources
tar xf linux-6.10.5.tar.xz
echo "Building linux-6.10.5"
pushd linux-6.10.5
make mrproper
make headers
find usr/include -type f ! -name '*.h' -delete
cp -rv usr/include $LFS/usr
