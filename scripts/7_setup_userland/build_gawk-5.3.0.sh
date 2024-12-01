#!/bin/bash

# set -euo pipefail

cd /sources

tar xf gawk-5.3.0.tar.xz
pushd gawk-5.3.0

echo "Building gawk-5.3.0"

sed -i 's/extras//' Makefile.in
./configure --prefix=/usr
make
chown -R tester .
su tester -c "PATH=$PATH make check"

rm -f /usr/bin/gawk-5.3.0
make install

ln -sv gawk.1 /usr/share/man/man1/awk.1	
mkdir -pv                                   /usr/share/doc/gawk-5.3.0
cp    -v doc/{awkforai.txt,*.{eps,pdf,jpg}} /usr/share/doc/gawk-5.3.0

popd
rm -rf gawk-5.3.0
