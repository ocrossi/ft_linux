#!/bin/bash

set -euo pipefail

cd /sources

tar xf dbus-1.14.10.tar.xz
pushd dbus-1.14.10

echo "Building dbus-1.14.10"

popd
rm -rf dbus-1.14.10
