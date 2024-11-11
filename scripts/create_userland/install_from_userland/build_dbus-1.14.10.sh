#!/bin/bash

set -euo pipefail

cd /sources

tar xf dbus-1.14.10.tar.xz
pushd dbus-1.14.10

echo "Building dbus-1.14.10"

./configure --prefix=/usr                        \
            --sysconfdir=/etc                    \
            --localstatedir=/var                 \
            --runstatedir=/run                   \
            --enable-user-session                \
            --disable-static                     \
            --disable-doxygen-docs               \
            --disable-xml-docs                   \
            --docdir=/usr/share/doc/dbus-1.14.10 \
            --with-system-socket=/run/dbus/system_bus_socket

make
make check
make install

ln -sv /etc/machine-id /var/lib/dbus

popd
rm -rf dbus-1.14.10
