#!/bin/bash

set -euo pipefail
cd /sources

tar -xf util-linux-2.40.2.tar.xz
pushd util-linux-2.40.2
echo Building util-linux-2.40.2

mkdir -pv /var/lib/hwclock
./configure --libdir=/usr/lib     \
            --runstatedir=/run    \
            --disable-chfn-chsh   \
            --disable-login       \
            --disable-nologin     \
            --disable-su          \
            --disable-setpriv     \
            --disable-runuser     \
            --disable-pylibmount  \
            --disable-static      \
            --disable-liblastlog2 \
            --without-python      \
            ADJTIME_PATH=/var/lib/hwclock/adjtime \
            --docdir=/usr/share/doc/util-linux-2.40.2

make
make install

popd
rm -rf util-linux-2.40.2
