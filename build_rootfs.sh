#!/bin/bash

PLATFORM=$1

./build_busybox.sh $PLATFORM

if [ $? != 0 ]; then
	echo "Busybox Build Error!!"
	exit 1
fi

echo current dir:`pwd`

if [ "$PLATFORM" = "arm64" ]; then
	cd rootfs/_install_arm64
else
	cd rootfs/_install
fi


mkdir etc
mkdir dev
mkdir mnt
mkdir -p etc/init.d/

# create rcS for target board
cat > etc/init.d/rcS << EOF
mkdir -p /proc
mkdir -p /tmp
mkdir -p /sys
mkdir -p /mnt
/bin/mount -a
mkdir -p /dev/pts
mount -t devpts devpts /dev/pts
echo /sbin/mdev > /proc/sys/kernel/hotplug
mdev -s
EOF

chmod +x ./etc/init.d/rcS

# create fstab for target board
cat > etc/fstab << EOF
proc /proc proc defaults 0 0
tmpfs /tmp tmpfs defaults 0 0
sysfs /sys sysfs defaults 0 0
tmpfs /dev tmpfs defaults 0 0
debugfs /sys/kernel/debug debugfs defaults 0 0
EOF

# create inittab for target board
cat > etc/inittab << EOF
::sysinit:/etc/init.d/rcS
::respawn:-/bin/sh
::askfirst:-/bin/sh
::ctrlaltdel:/bin/umount -a -r
EOF

# create dev node

cd dev
sudo mknod console c 5 1
sudo mknod null c 1 3


echo "Build rootfs success!!"
