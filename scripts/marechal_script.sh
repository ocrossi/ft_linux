#!/bin/bash

set -e

#echo "Building network device ... "
#pushd 1_build_networkdevice
#	time sh create_networkdevice.sh
#	export LFS=/mnt/lfs
#popd
#echo "Done"
#
#echo "Downloads packages ... "
#pushd 2_download_packages
#	time sh download_packages.sh &>download_packages.out
#popd
#echo "Done"
#
#echo "Prepare filesystem ... "
#pushd 3_prepare_filesystem
#	sh create_fs.sh  &>>prepare_filesystem.txt
#	echo "==================================="
#	sh create_lfs_user.sh &>>prepare_filesystem.txt
#	cp lfs_user_script/create_lfs_user_env.sh /
#popd
#echo "Done"
#
#echo "Prepare lfs user env ... "
#	env -i HOME=/home/lfs TERM=$TERM  bash /create_lfs_user_env.sh
#echo "Done"
#
#echo "Install cross compile toolchain"
#pushd 4_cross_compile_toolchain
#	mkdir -pv /mnt/lfs/sources/build_x_compile
#	cp * /mnt/lfs/sources/build_x_compile
#	env -i HOME=/home/lfs TERM=$TERM MAKEFLAGS=-j$(nproc) su lfs -c "cd /mnt/lfs/sources/build_x_compile && 
#		source /home/lfs/.bashrc && 
#		time sh colonel_cross_compile.sh"
#popd
#echo "Done"
#
echo "Prepare chroot env"
cp -rf 6_prepare_userland /mnt/lfs/
pushd 5_prepare_chroot
	sh chroot.sh
	sh prepare_virtual_files_kernel.sh
popd

echo "Prepare userland"
pushd 6_prepare_userland
	time sh enter_chroot.sh 
popd

# next steps should be done manually while in chroot
#echo "Configure userland"
