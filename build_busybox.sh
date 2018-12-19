#!/bin/bash


build_arm64() {
	echo "start to build ARM64 $1 kernel image!!"
	export ARCH=arm64
	export CROSS_COMPILE=aarch64-linux-gnu-
	make qemu_arm64_defconfig 
	make install
}

build_arm() {
	echo "start to build ARM $1 kernel image!!"
	export ARCH=arm
	export CROSS_COMPILE=arm-linux-gnueabi-
	make qemu_arm_defconfig 
	make install
}


#main entry

PLATFORM=$1
cd busybox-1.24.0

case ${PLATFORM} in
	arm64)
		build_arm64 
		;;
	arm)
		build_arm 
		;;
	clean)
		echo "start to clean!!"
		make mrproper 
		;;
	*)
		echo "usage:"
		echo "./build.sh [platform]"
		echo " "
		echo "eg:"
		echo "   ./build.sh arm64     #build default  arm64 config"
		echo "   ./build.sh arm       #build default arm config"
		exit 1
		;;
esac


