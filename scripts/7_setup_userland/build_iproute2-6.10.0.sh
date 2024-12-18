#!/bin/bash

set -euo pipefail

cd /sources

tar xf iproute2-6.10.0.tar.xz
pushd iproute2-6.10.0

echo "Building iproute2-6.10.0"

sed -i /ARPD/d Makefile
rm -fv man/man8/arpd.8

make NETNS_RUN_DIR=/run/netns
make SBINDIR=/usr/sbin install
mkdir -pv             /usr/share/doc/iproute2-6.10.0
cp -v COPYING README* /usr/share/doc/iproute2-6.10.0

popd
rm -rf iproute2-6.10.0
