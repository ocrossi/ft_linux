#!/bin/bash

set -euo pipefail

cd /sources

tar xf util-linux-2.40.2.tar.xz
pushd util-linux-2.40.2

echo "Building util-linux-2.40.2"

./configure --bindir=/usr/bin     \
            --libdir=/usr/lib     \
            --runstatedir=/run    \
            --sbindir=/usr/sbin   \
            --disable-chfn-chsh   \
            --disable-login       \
            --disable-nologin     \
            --disable-su          \
            --disable-setpriv     \
            --disable-runuser     \
            --disable-pylibmount  \
            --disable-liblastlog2 \
            --disable-static      \
            --without-python      \
            ADJTIME_PATH=/var/lib/hwclock/adjtime \
            --docdir=/usr/share/doc/util-linux-2.40.2

make
touch /etc/fstab
chown -R tester .
su tester -c "make -k check"
make install

popd
rm -rf util-linux-2.40.2
