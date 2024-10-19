# 1st step : Install packages required in LFS

run script check-version.sh
install missing packages with install.sh

# 2nd step : create a partition for our kernel to live in

two ways : 
 - 1st is create a partition on empty disk space, easy
 - 2nd is creating a loop device, better (like snapd, everything is inside a file that simulates a storage block)

we will use 2nd way, as it is more flexible

# 3rd step : create a linux filesystem for our partition/loopback
https://dzone.com/articles/loop-device-in-linux
follow this tutorial

just create file, do not perform part creating a linux filesystem before partitionning the loop file.
1st divide, then conquer

# 4th step : partition loopdevice
1st partition 1m for boot
2nd partition remaning-space - 1G for / partition
finally remaining sapce for swap device

# 5th step : reboot & add loopdevice + scan for partitions + create $LFS env var
losetup -P [loopdevice:/dev/loop0] [loopfile:./loopdevice]
now will see the partitions of loopdevice using lsblk
create mount dir /mnt/lfs
check /root/.zprofile (using zsh) file, we do losetup command + export $LFS on boot

# 6th step : mount partition & mount it from boot
mount /dev/loop0p2 $LFS
vi /etc/fstab --> tab filsesystem, check last line
