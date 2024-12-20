#!/bin/bash

# problem with ninja test, should be done manually

# set -euo pipefail

cd /sources

tar xf systemd-256.4.tar.gz
pushd systemd-256.4

echo "Building systemd-256.4"

sed -i -e 's/GROUP="render"/GROUP="video"/' \
       -e 's/GROUP="sgx", //' rules.d/50-udev-default.rules.in

mkdir -p build
pushd    build

meson setup ..                \
      --prefix=/usr           \
      --buildtype=release     \
      -D default-dnssec=no    \
      -D firstboot=false      \
      -D install-tests=false  \
      -D ldconfig=false       \
      -D sysusers=false       \
      -D rpmmacrosdir=no      \
      -D homed=disabled       \
      -D userdb=false         \
      -D man=disabled         \
      -D mode=release         \
      -D pamconfdir=no        \
      -D dev-kvm-mode=0660    \
      -D nobody-group=nogroup \
      -D sysupdate=disabled   \
      -D ukify=disabled       \
      -D docdir=/usr/share/doc/systemd-256.4


ninja
echo 'NAME="Linux From Scratch"' > /etc/os-release
ninja test

ninja install

tar -xf ../../systemd-man-pages-256.4.tar.xz \
    --no-same-owner --strip-components=1   \
    -C /usr/share/man

systemd-machine-id-setup
systemctl preset-all

popd
popd
rm -rf systemd-256.4
