#!/bin/bash

set -euo pipefail


l5="$HOME/out5.txt"
l6="$HOME/out6.txt"
# build part 5, cross compile tool chain

touch $l5 $l6

sh build_binutils_1.sh &>>$l5
echo "=========================" >> $l5
sh build_gcc_1.sh &>>$l5
echo "=========================" >> $l5
sh build_kernel.sh &>>$l5
echo "=========================" >> $l5
sh build_glibc.sh &>>$l5
echo "=========================" >> $l5
sh build_libstdcpp.sh &>>$l5
echo "=========================" >> $l5

# build part 6, temp tools that will be used after chroot

sh build_m4.sh &>>$l6
echo "=========================" >> $l6
sh build_ncurses.sh &>>$l6
echo "=========================" >> $l6
sh build_bash.sh &>>$l6
echo "=========================" >> $l6
sh build_coreutils.sh &>>$l6
echo "=========================" >> $l6
sh build_coreutils.sh &>>$l6
echo "=========================" >> $l6
sh build_diffutils.sh &>>$l6
echo "=========================" >> $l6
sh build_file.sh &>>$l6
echo "=========================" >> $l6
sh build_findutils.sh &>>$l6
echo "=========================" >> $l6
sh build_gawk.sh &>>$l6
echo "=========================" >> $l6
sh build_grep.sh &>>$l6
echo "=========================" >> $l6
sh build_gzip.sh &>>$l6
echo "=========================" >> $l6
sh build_make.sh &>>$l6
echo "=========================" >> $l6
sh build_patch.sh &>>$l6
echo "=========================" >> $l6
sh build_sed.sh &>>$l6
echo "=========================" >> $l6
sh build_tar.sh &>>$l6
echo "=========================" >> $l6
sh build_xz.sh &>>$l6
echo "=========================" >> $l6
sh build_binutils_2.sh &>>$l6
echo "=========================" >> $l6
sh build_gcc_2.sh &>>$l6
echo "=========================" >> $l6
