#!/bin/bash

# stop on any error
set -euo pipefail

config_file="/root/.zprofile"
# raw_file="./disk.raw"
qcow2_file="../lfs.qcow2"
partition_blueprint="partitions.txt"
lfs_dir="/mnt/lfs"
output_file="out.txt"

function display_command() {
	echo -n "$1 ... "
	eval "$2"
	echo "OK"
	sleep 1
}

free_networkdevice="/dev/nbd0"
display_command 	"create file of size 20G filled with 0s " \
			'qemu-img create -f qcow2 $qcow2_file 20G'
display_command		"activate kernel module NBDd (NetworkBlockDevice)" \
			'modprobe nbd max_part=8'
display_command		"connect NetworkBlockDevice to disk image" \
			'qemu-nbd -c $free_networkdevice $qcow2_file'
display_command		"partition the network device block file using $partition_blueprint  " \
			'cat $partition_blueprint | sfdisk $free_networkdevice &>$output_file'
boot_part=$free_networkdevice"p1"
home_part=$free_networkdevice"p2"
swap_part=$free_networkdevice"p3"
display_command		"add $lfs_dir to zprofile" \
			'echo "export LFS=$lfs_dir" >> $config_file'
display_command		"Change partition table with new NetworkBlockDevice entry" \
			'partprobe $free_networkdevice'
display_command		"make filesystem ext4 on boot partition" \
			'mkfs -v -t ext4 $boot_part &>$output_file'
display_command		"make filesystem ext4 on home partition" \
			'mkfs -v -t ext4 $home_part &>$output_file'
display_command		"make swap partition on last partition " \
			'mkswap $swap_part &>$output_file'
display_command		"create lfs dir" \
			'mkdir -pv $lfs_dir'
display_command 	"mount home part from loopfile to $lfs_dir" \
			'mount $home_part $lfs_dir'

# zprofile for reboot
