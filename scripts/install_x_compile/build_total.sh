# build part 5, cross compile tool chain
sh build_binutils_1.sh
sh build_gcc_1.sh
sh build_kernel.sh
sh build_glibc.sh
sh build_libstdcpp.sh

# build part 6, temp tools that will be used after chroot

sh build_m4.sh
sh build_ncurses.sh
sh build_bash.sh
sh build_coreutils.sh
sh build_coreutils.sh
sh build_diffutils.sh
sh build_file.sh
sh build_findutils.sh
sh build_gawk.sh
sh build_grep.sh
sh build_gzip.sh
sh build_make.sh
sh build_patch.sh
sh build_sed.sh
sh build_tar.sh
sh build_xz.sh
sh build_binutils_2.sh
sh build_gcc_2.sh
