#!/bin/bash
#set -x

if [ "$1" == "" ]; then

echo "You need to pass the device name u can find the device name in /dev folder "
echo "Usage:  ./test.sh <Device Name>"
exit 1

fi

pvcreate /dev/$1
vgcreate VG00 /dev/$1

lvcreate -l +100%FREE -n LV_U01 VG00
mkfs.ext4 /dev/mapper/VG00-LV_U01

echo -e "/dev/mapper/VG00-LV_U01\t/u01\text4\tdefaults\t0 0">>/etc/fstab

mkdir /u01

mount -a

df -h

