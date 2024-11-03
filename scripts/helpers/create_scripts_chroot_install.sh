#!/bin/bash

set -eou pipefail


arch_arr=(
	'man-pages-6.9.1.tar.xz'
	'iana-etc-20240806.tar.gz'
	'glibc-2.40.tar.xz'
	'zlib-1.3.1.tar.gz'
	'bzip2-1.0.8.tar.gz'
	'xz-5.6.2.tar.xz'
	'lz4-1.10.0.tar.gz'
	'zstd-1.5.6.tar.gz'
	'file-5.45.tar.gz'
	'readline-8.2.13.tar.gz'
	'm4-1.4.19.tar.xz'
	'bc-6.7.6.tar.xz'
	'flex-2.6.4.tar.gz'
	'tcl8.6.14-src.tar.gz'
	'expect5.45.4.tar.gz'
	'dejagnu-1.6.3.tar.gz'
	'pkgconf-2.3.0.tar.xz'
	'binutils-2.43.1.tar.xz'
	'gmp-6.3.0.tar.xz'
	'mpfr-4.2.1.tar.xz'
	'mpc-1.3.1.tar.gz'
	'attr-2.5.2.tar.gz'
	'acl-2.3.2.tar.xz'
	'libcap-2.70.tar.xz'
	'libxcrypt-4.4.36.tar.xz'
	'shadow-4.16.0.tar.xz'
	'gcc-14.2.0.tar.xz'
	'ncurses-6.5.tar.gz'
	'sed-4.9.tar.xz'
	'psmisc-23.7.tar.xz'
	'gettext-0.22.5.tar.xz'
	'bison-3.8.2.tar.xz'
	'grep-3.11.tar.xz'
	'bash-5.2.32.tar.gz'
	'libtool-2.4.7.tar.xz'
	'gdbm-1.24.tar.gz'
	'gperf-3.1.tar.gz'
	'expat-2.6.2.tar.xz'
	'inetutils-2.5.tar.xz'
	'less-661.tar.gz'
	'perl-5.40.0.tar.xz'
	'XML-Parser-2.47.tar.gz'
	'intltool-0.51.0.tar.gz'
	'autoconf-2.72.tar.xz'
	'automake-1.17.tar.xz'
	'openssl-3.3.1.tar.gz'
	'kmod-33.tar.xz'
	'elfutils-0.191.tar.bz2'
	'libffi-3.4.6.tar.gz'
	'Python-3.12.5.tar.xz'
	'flit_core-3.9.0.tar.gz'
	'wheel-0.44.0.tar.gz'
	'setuptools-72.2.0.tar.gz'
	'ninja-1.12.1.tar.gz'
	'meson-1.5.1.tar.gz'
	'coreutils-9.5.tar.xz'
	'check-0.15.2.tar.gz'
	'diffutils-3.10.tar.xz'
	'gawk-5.3.0.tar.xz'
	'findutils-4.10.0.tar.xz'
	'groff-1.23.0.tar.gz'
	'grub-2.12.tar.xz'
	'gzip-1.13.tar.xz'
	'iproute2-6.10.0.tar.xz'
	'kbd-2.6.4.tar.xz'
	'libpipeline-1.5.7.tar.gz'
	'make-4.4.1.tar.gz'
	'patch-2.7.6.tar.xz'
	'tar-1.35.tar.xz'
	'texinfo-7.1.tar.xz'
	'vim-9.1.0660.tar.gz'
	'MarkupSafe-2.1.5.tar.gz'
	'jinja2-3.1.4.tar.gz'
	'systemd-256.4.tar.gz'
	'dbus-1.14.10.tar.xz'
	'man-db-2.12.1.tar.xz'
	'procps-ng-4.0.4.tar.xz'
	'util-linux-2.40.2.tar.xz'
	'e2fsprogs-1.47.1.tar.gz'
	) 

for archname in ${arch_arr[@]}; do
dirname="${archname%.*}"
dirname="${dirname%.*}"
scname="build_$dirname.sh"
touch $scname;
cat << EOF > $scname
#!/bin/bash

set -euo pipefail

cd /sources

tar xf $archname
pushd $dirname

echo "Building $dirname"

popd
rm -rf $dirname
EOF
echo "sh $scname 2>err_$dirname 1>out_$dirname" >> colonel_build.sh
done
