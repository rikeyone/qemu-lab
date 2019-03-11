#!/bin/bash

arch=$1
if [ "${arch}" = "" ];then
	arch=arm64
fi

HOST_IP=192.168.1.1
TARGET_IP=192.168.1.101
NET_NUMBER=192.168.1.0
NET_MASK=255.255.255.0
NFS_ROOT=`pwd`/rootfs

sudo apt-get install nfs-kernel-server
sudo apt-get install uml-utilities

if [ ! -e /etc/exports.bak ];then
	sudo cp /etc/exports /etc/exports.bak
fi

sudo echo "${NFS_ROOT}/${arch}/_install *(rw,sync,no_subtree_check,no_root_squash)" > /etc/exports
sudo /etc/init.d/nfs-kernel-server restart

TAP=$(ifconfig tap0 | head -n 1 | awk '{print $1}')

if [ x${TAP} = x ];then
	sudo tunctl -u $(whoami) -t tap0
	sudo ifconfig tap0 ${HOST_IP}
	sudo route add -net ${NET_NUMBER} netmask ${NET_MASK} dev tap0
	sudo sh -c "echo 1 > /proc/sys/net/ipv4/ip_forward"
fi

if [ "${arch}" = "arm" ];then
	qemu-system-arm -M vexpress-a9 \
		-smp 4 \
		-m 1024m \
		-kernel linux-4.0/arch/arm/boot/zImage \
		-append "console=ttyAMA0 loglevel=8 root=/dev/nfs rw nfsroot=${HOST_IP}:${NFS_ROOT}/arm/_install,nolock ip=${TARGET_IP}" \
		-dtb linux-4.0/arch/arm/boot/dts/vexpress-v2p-ca9.dtb \
		-net nic -net tap,ifname=tap0,script=no \
		-nographic
else
	qemu-system-aarch64 -machine virt \
		-cpu cortex-a57 \
		-machine type=virt \
		-nographic -m 2048 \
		-smp 2 \
		-kernel linux-4.0/arch/arm64/boot/Image \
		-append "console=ttyAMA0 loglevel=8 root=/dev/nfs rw nfsroot=${HOST_IP}:${NFS_ROOT}/arm64/_install,nolock ip=${TARGET_IP}:${HOST_IP}:::::off::" \
		-net nic -net tap,ifname=tap0,script=no
fi
