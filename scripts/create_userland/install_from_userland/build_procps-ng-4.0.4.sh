#!/bin/bash

set -euo pipefail

cd /sources

tar xf procps-ng-4.0.4.tar.xz
pushd procps-ng-4.0.4

echo "Building procps-ng-4.0.4"

./configure --prefix=/usr                           \
            --docdir=/usr/share/doc/procps-ng-4.0.4 \
            --disable-static                        \
            --disable-kill                          \
            --with-systemd

make src_w_LDADD='$(LDADD) -lsystemd'
chown -R tester .
su tester -c "PATH=$PATH make check"
make install

popd
rm -rf procps-ng-4.0.4
