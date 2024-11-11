#!/bin/bash

set -euo pipefail

cd /sources

tar xf bash-5.2.32.tar.gz
pushd bash-5.2.32

echo "Building bash-5.2.32"

./configure --prefix=/usr             \
            --without-bash-malloc     \
            --with-installed-readline \
            bash_cv_strtold_broken=no \
            --docdir=/usr/share/doc/bash-5.2.32

make

chown -R tester .

su -s /usr/bin/expect tester << "EOF"
set timeout -1
spawn make tests
expect eof
lassign [wait] _ _ _ value
exit $value
EOF

make install
exec /usr/bin/bash --login


popd
rm -rf bash-5.2.32
