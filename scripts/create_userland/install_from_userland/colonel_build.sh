mkdir -pv /logs

echo "Running build_man-pages-6.9.1.sh"
time sh build_man-pages-6.9.1.sh 2>/logs/err_man-pages-6.9.1 &>/logs/out_man-pages-6.9.1
echo "Running build_iana-etc-20240806.sh"
time sh build_iana-etc-20240806.sh 2>/logs/err_iana-etc-20240806 &>/logs/out_iana-etc-20240806
echo "Running build_glibc-2.40.sh"
time sh build_glibc-2.40.sh 2>/logs/err_glibc-2.40 &>/logs/out_glibc-2.40
echo "Running build_zlib-1.3.1.sh"
time sh build_zlib-1.3.1.sh 2>/logs/err_zlib-1.3.1 &>/logs/out_zlib-1.3.1
echo "Running build_bzip2-1.0.8.sh"
time sh build_bzip2-1.0.8.sh 2>/logs/err_bzip2-1.0.8 &>/logs/out_bzip2-1.0.8
echo "Running build_xz-5.6.2.sh"
time sh build_xz-5.6.2.sh 2>/logs/err_xz-5.6.2 &>/logs/out_xz-5.6.2
echo "Running build_lz4-1.10.0.sh"
time sh build_lz4-1.10.0.sh 2>/logs/err_lz4-1.10.0 &>/logs/out_lz4-1.10.0
echo "Running build_zstd-1.5.6.sh"
time sh build_zstd-1.5.6.sh 2>/logs/err_zstd-1.5.6 &>/logs/out_zstd-1.5.6
echo "Running build_file-5.45.sh"
time sh build_file-5.45.sh 2>/logs/err_file-5.45 &>/logs/out_file-5.45
echo "Running build_readline-8.2.13.sh"
time sh build_readline-8.2.13.sh 2>/logs/err_readline-8.2.13 &>/logs/out_readline-8.2.13
echo "Running build_m4-1.4.19.sh"
time sh build_m4-1.4.19.sh 2>/logs/err_m4-1.4.19 &>/logs/out_m4-1.4.19
echo "Running build_bc-6.7.6.sh"
time sh build_bc-6.7.6.sh 2>/logs/err_bc-6.7.6 &>/logs/out_bc-6.7.6
echo "Running build_flex-2.6.4.sh"
time sh build_flex-2.6.4.sh 2>/logs/err_flex-2.6.4 &>/logs/out_flex-2.6.4
echo "Running build_tcl8.6.14-src.sh"
time sh build_tcl8.6.14-src.sh 2>/logs/err_tcl8.6.14-src &>/logs/out_tcl8.6.14-src
echo "Running build_expect5.45.4.sh"
time sh build_expect5.45.4.sh 2>/logs/err_expect5.45.4 &>/logs/out_expect5.45.4
echo "Running build_dejagnu-1.6.3.sh"
time sh build_dejagnu-1.6.3.sh 2>/logs/err_dejagnu-1.6.3 &>/logs/out_dejagnu-1.6.3
echo "Running build_pkgconf-2.3.0.sh"
time sh build_pkgconf-2.3.0.sh 2>/logs/err_pkgconf-2.3.0 &>/logs/out_pkgconf-2.3.0
echo "Running build_binutils-2.43.1.sh"
time sh build_binutils-2.43.1.sh 2>/logs/err_binutils-2.43.1 &>/logs/out_binutils-2.43.1
echo "Running build_gmp-6.3.0.sh"
time sh build_gmp-6.3.0.sh 2>/logs/err_gmp-6.3.0 &>/logs/out_gmp-6.3.0
echo "Running build_mpfr-4.2.1.sh"
time sh build_mpfr-4.2.1.sh 2>/logs/err_mpfr-4.2.1 &>/logs/out_mpfr-4.2.1
echo "Running build_mpc-1.3.1.sh"
time sh build_mpc-1.3.1.sh 2>/logs/err_mpc-1.3.1 &>/logs/out_mpc-1.3.1
echo "Running build_attr-2.5.2.sh"
time sh build_attr-2.5.2.sh 2>/logs/err_attr-2.5.2 &>/logs/out_attr-2.5.2
echo "Running build_acl-2.3.2.sh"
time sh build_acl-2.3.2.sh 2>/logs/err_acl-2.3.2 &>/logs/out_acl-2.3.2
echo "Running build_libcap-2.70.sh"
time sh build_libcap-2.70.sh 2>/logs/err_libcap-2.70 &>/logs/out_libcap-2.70
echo "Running build_libxcrypt-4.4.36.sh"
time sh build_libxcrypt-4.4.36.sh 2>/logs/err_libxcrypt-4.4.36 &>/logs/out_libxcrypt-4.4.36
echo "Running build_shadow-4.16.0.sh"
time sh build_shadow-4.16.0.sh 2>/logs/err_shadow-4.16.0 &>/logs/out_shadow-4.16.0
echo "Running build_gcc-14.2.0.sh"
time sh build_gcc-14.2.0.sh 2>/logs/err_gcc-14.2.0 &>/logs/out_gcc-14.2.0
echo "Running build_ncurses-6.5.sh"
time sh build_ncurses-6.5.sh 2>/logs/err_ncurses-6.5 &>/logs/out_ncurses-6.5
echo "Running build_sed-4.9.sh"
time sh build_sed-4.9.sh 2>/logs/err_sed-4.9 &>/logs/out_sed-4.9
echo "Running build_psmisc-23.7.sh"
time sh build_psmisc-23.7.sh 2>/logs/err_psmisc-23.7 &>/logs/out_psmisc-23.7
echo "Running build_gettext-0.22.5.sh"
time sh build_gettext-0.22.5.sh 2>/logs/err_gettext-0.22.5 &>/logs/out_gettext-0.22.5
echo "Running build_bison-3.8.2.sh"
time sh build_bison-3.8.2.sh 2>/logs/err_bison-3.8.2 &>/logs/out_bison-3.8.2
echo "Running build_grep-3.11.sh"
time sh build_grep-3.11.sh 2>/logs/err_grep-3.11 &>/logs/out_grep-3.11
echo "Running build_bash-5.2.32.sh"
time sh build_bash-5.2.32.sh 2>/logs/err_bash-5.2.32 &>/logs/out_bash-5.2.32
echo "Running build_libtool-2.4.7.sh"
time sh build_libtool-2.4.7.sh 2>/logs/err_libtool-2.4.7 &>/logs/out_libtool-2.4.7
echo "Running build_gdbm-1.24.sh"
time sh build_gdbm-1.24.sh 2>/logs/err_gdbm-1.24 &>/logs/out_gdbm-1.24
echo "Running build_gperf-3.1.sh"
time sh build_gperf-3.1.sh 2>/logs/err_gperf-3.1 &>/logs/out_gperf-3.1
echo "Running build_expat-2.6.2.sh"
time sh build_expat-2.6.2.sh 2>/logs/err_expat-2.6.2 &>/logs/out_expat-2.6.2
echo "Running build_inetutils-2.5.sh"
time sh build_inetutils-2.5.sh 2>/logs/err_inetutils-2.5 &>/logs/out_inetutils-2.5
echo "Running build_less-661.sh"
time sh build_less-661.sh 2>/logs/err_less-661 &>/logs/out_less-661
echo "Running build_perl-5.40.0.sh"
time sh build_perl-5.40.0.sh 2>/logs/err_perl-5.40.0 &>/logs/out_perl-5.40.0
echo "Running build_XML-Parser-2.47.sh"
time sh build_XML-Parser-2.47.sh 2>/logs/err_XML-Parser-2.47 &>/logs/out_XML-Parser-2.47
echo "Running build_intltool-0.51.0.sh"
time sh build_intltool-0.51.0.sh 2>/logs/err_intltool-0.51.0 &>/logs/out_intltool-0.51.0
echo "Running build_autoconf-2.72.sh"
time sh build_autoconf-2.72.sh 2>/logs/err_autoconf-2.72 &>/logs/out_autoconf-2.72
echo "Running build_automake-1.17.sh"
time sh build_automake-1.17.sh 2>/logs/err_automake-1.17 &>/logs/out_automake-1.17
echo "Running build_openssl-3.3.1.sh"
time sh build_openssl-3.3.1.sh 2>/logs/err_openssl-3.3.1 &>/logs/out_openssl-3.3.1
echo "Running build_kmod-33.sh"
time sh build_kmod-33.sh 2>/logs/err_kmod-33 &>/logs/out_kmod-33
echo "Running build_elfutils-0.191.sh"
time sh build_elfutils-0.191.sh 2>/logs/err_elfutils-0.191 &>/logs/out_elfutils-0.191
echo "Running build_libffi-3.4.6.sh"
time sh build_libffi-3.4.6.sh 2>/logs/err_libffi-3.4.6 &>/logs/out_libffi-3.4.6
echo "Running build_Python-3.12.5.sh"
time sh build_Python-3.12.5.sh 2>/logs/err_Python-3.12.5 &>/logs/out_Python-3.12.5
echo "Running build_flit_core-3.9.0.sh"
time sh build_flit_core-3.9.0.sh 2>/logs/err_flit_core-3.9.0 &>/logs/out_flit_core-3.9.0
echo "Running build_wheel-0.44.0.sh"
time sh build_wheel-0.44.0.sh 2>/logs/err_wheel-0.44.0 &>/logs/out_wheel-0.44.0
echo "Running build_setuptools-72.2.0.sh"
time sh build_setuptools-72.2.0.sh 2>/logs/err_setuptools-72.2.0 &>/logs/out_setuptools-72.2.0
echo "Running build_ninja-1.12.1.sh"
time sh build_ninja-1.12.1.sh 2>/logs/err_ninja-1.12.1 &>/logs/out_ninja-1.12.1
echo "Running build_meson-1.5.1.sh"
time sh build_meson-1.5.1.sh 2>/logs/err_meson-1.5.1 &>/logs/out_meson-1.5.1
echo "Running build_coreutils-9.5.sh"
time sh build_coreutils-9.5.sh 2>/logs/err_coreutils-9.5 &>/logs/out_coreutils-9.5
echo "Running build_check-0.15.2.sh"
time sh build_check-0.15.2.sh 2>/logs/err_check-0.15.2 &>/logs/out_check-0.15.2
echo "Running build_diffutils-3.10.sh"
time sh build_diffutils-3.10.sh 2>/logs/err_diffutils-3.10 &>/logs/out_diffutils-3.10
echo "Running build_gawk-5.3.0.sh"
time sh build_gawk-5.3.0.sh 2>/logs/err_gawk-5.3.0 &>/logs/out_gawk-5.3.0
echo "Running build_findutils-4.10.0.sh"
time sh build_findutils-4.10.0.sh 2>/logs/err_findutils-4.10.0 &>/logs/out_findutils-4.10.0
echo "Running build_groff-1.23.0.sh"
time sh build_groff-1.23.0.sh 2>/logs/err_groff-1.23.0 &>/logs/out_groff-1.23.0
echo "Running build_grub-2.12.sh"
time sh build_grub-2.12.sh 2>/logs/err_grub-2.12 &>/logs/out_grub-2.12
echo "Running build_gzip-1.13.sh"
time sh build_gzip-1.13.sh 2>/logs/err_gzip-1.13 &>/logs/out_gzip-1.13
echo "Running build_iproute2-6.10.0.sh"
time sh build_iproute2-6.10.0.sh 2>/logs/err_iproute2-6.10.0 &>/logs/out_iproute2-6.10.0
echo "Running build_kbd-2.6.4.sh"
time sh build_kbd-2.6.4.sh 2>/logs/err_kbd-2.6.4 &>/logs/out_kbd-2.6.4
echo "Running build_libpipeline-1.5.7.sh"
time sh build_libpipeline-1.5.7.sh 2>/logs/err_libpipeline-1.5.7 &>/logs/out_libpipeline-1.5.7
echo "Running build_make-4.4.1.sh"
time sh build_make-4.4.1.sh 2>/logs/err_make-4.4.1 &>/logs/out_make-4.4.1
echo "Running build_patch-2.7.6.sh"
time sh build_patch-2.7.6.sh 2>/logs/err_patch-2.7.6 &>/logs/out_patch-2.7.6
echo "Running build_tar-1.35.sh"
time sh build_tar-1.35.sh 2>/logs/err_tar-1.35 &>/logs/out_tar-1.35
echo "Running build_texinfo-7.1.sh"
time sh build_texinfo-7.1.sh 2>/logs/err_texinfo-7.1 &>/logs/out_texinfo-7.1
echo "Running build_vim-9.1.0660.sh"
time sh build_vim-9.1.0660.sh 2>/logs/err_vim-9.1.0660 &>/logs/out_vim-9.1.0660
echo "Running build_MarkupSafe-2.1.5.sh"
time sh build_MarkupSafe-2.1.5.sh 2>/logs/err_MarkupSafe-2.1.5 &>/logs/out_MarkupSafe-2.1.5
echo "Running build_jinja2-3.1.4.sh"
time sh build_jinja2-3.1.4.sh 2>/logs/err_jinja2-3.1.4 &>/logs/out_jinja2-3.1.4
echo "Running build_systemd-256.4.sh"
time sh build_systemd-256.4.sh 2>/logs/err_systemd-256.4 &>/logs/out_systemd-256.4
echo "Running build_dbus-1.14.10.sh"
time sh build_dbus-1.14.10.sh 2>/logs/err_dbus-1.14.10 &>/logs/out_dbus-1.14.10
echo "Running build_man-db-2.12.1.sh"
time sh build_man-db-2.12.1.sh 2>/logs/err_man-db-2.12.1 &>/logs/out_man-db-2.12.1
echo "Running build_procps-ng-4.0.4.sh"
time sh build_procps-ng-4.0.4.sh 2>/logs/err_procps-ng-4.0.4 &>/logs/out_procps-ng-4.0.4
echo "Running build_util-linux-2.40.2.sh"
time sh build_util-linux-2.40.2.sh 2>/logs/err_util-linux-2.40.2 &>/logs/out_util-linux-2.40.2
echo "Running build_e2fsprogs-1.47.1.sh"
time sh build_e2fsprogs-1.47.1.sh 2>/logs/err_e2fsprogs-1.47.1 &>/logs/out_e2fsprogs-1.47.1
