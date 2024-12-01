#!/bin/bash

set -euo pipefail

logs="$LFS/sources"

mkdir -pv $logs

echo "Builing build_binutils_1.sh"
sh build_binutils_1.sh &>$logs/build_binutils_1.sh 
echo "========================="
echo "Building build_gcc_1.sh"
sh build_gcc_1.sh &>$logs/build_gcc_1.sh 
echo "========================="
echo "Building build_kernel.sh"
sh build_kernel.sh &>$logs/build_kernel.sh 
echo "========================="
echo "Building build_glibc.sh"
sh build_glibc.sh &>$logs/build_glibc.sh 
echo "========================="
echo "Building build_libstdcpp.sh"
sh build_libstdcpp.sh &>$logs/build_libstdcpp.sh 
echo "========================="

# build part 6, temp tools that will be used after chroot

echo "Building build_m4.sh"
sh build_m4.sh &>$logs/build_m4.sh 
echo "========================="
echo "Building build_ncurses.sh"
sh build_ncurses.sh &>$logs/build_ncurses.sh 
echo "========================="
echo "Building build_bash.sh"
sh build_bash.sh &>$logs/build_bash.sh 
echo "========================="
echo "Building build_coreutils.sh"
sh build_coreutils.sh &>$logs/build_coreutils.sh 
echo "========================="
echo "Building build_coreutils.sh"
sh build_coreutils.sh &>$logs/build_coreutils.sh 
echo "========================="
echo "Building build_diffutils.sh"
sh build_diffutils.sh &>$logs/build_diffutils.sh 
echo "========================="
echo "Building build_file.sh"
sh build_file.sh &>$logs/build_file.sh 
echo "========================="
echo "Building build_findutils.sh"
sh build_findutils.sh &>$logs/build_findutils.sh 
echo "========================="
echo "Building build_gawk.sh"
sh build_gawk.sh &>$logs/build_gawk.sh 
echo "========================="
echo "Building build_grep.sh"
sh build_grep.sh &>$logs/build_grep.sh 
echo "========================="
echo "Building build_gzip.sh"
sh build_gzip.sh &>$logs/build_gzip.sh 
echo "========================="
echo "Building build_make.sh"
sh build_make.sh &>$logs/build_make.sh 
echo "========================="
echo "Building build_patch.sh"
sh build_patch.sh &>$logs/build_patch.sh 
echo "========================="
echo "Building build_sed.sh"
sh build_sed.sh &>$logs/build_sed.sh 
echo "========================="
echo "Building build_tar.sh"
sh build_tar.sh &>$logs/build_tar.sh 
echo "========================="
echo "Building build_xz.sh"
sh build_xz.sh &>$logs/build_xz.sh 
echo "========================="
echo "Building build_binutils_2.sh"
sh build_binutils_2.sh &>$logs/build_binutils_2.sh 
echo "========================="
echo "Building build_gcc_2.sh"
sh build_gcc_2.sh &>$logs/build_gcc_2.sh 
echo "========================="
