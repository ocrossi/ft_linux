#!/bin/bash

set -euo pipefail

cd /sources

tar xf systemd-256.4.tar.gz
pushd systemd-256.4

echo "Building systemd-256.4"

popd
rm -rf systemd-256.4
