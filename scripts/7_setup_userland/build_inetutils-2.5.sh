#!/bin/bash

set -euo pipefail

cd /sources

tar xf inetutils-2.5.tar.xz
pushd inetutils-2.5

echo "Building inetutils-2.5"

sed -i 's/def HAVE_TERMCAP_TGETENT/ 1/' telnet/telnet.c
./configure --prefix=/usr        \
            --bindir=/usr/bin    \
            --localstatedir=/var \
            --disable-logger     \
            --disable-whois      \
            --disable-rcp        \
            --disable-rexec      \
            --disable-rlogin     \
            --disable-rsh        \
            --disable-servers

make
make check
make install
mv -v /usr/{,s}bin/ifconfig


popd
rm -rf inetutils-2.5
