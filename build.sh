#!/bin/bash

PLATFORM=$1

cd linux-4.0

if [ -e arch/arm64/boot/Image -a "${PLATFORM}" != "arm64" ]; then
	echo "arch/arm64/boot/Image exist, make distclean"
	rm arch/arm64/boot/Image -f
	make distclean
elif [ -e arch/arm/boot/zImage -a "${PLATFORM}" != "arm" ]; then
	echo "arch/arm/boot/zImage exist, make distclean"
	rm arch/arm/boot/zImage -f
	make distclean
fi


case ${PLATFORM} in
	arm64)
		echo "start to build ARM64 kernel image!!"
		export ARCH=arm64
		export CROSS_COMPILE=aarch64-linux-gnu-
		make qemu_test_defconfig
		make -j8
		;;
	arm)
		echo "start to build ARM kernel image!!"
		export ARCH=arm
		export CROSS_COMPILE=arm-linux-gnueabi-
		make qemu_test_defconfig
		make bzImage -j8
		make dtbs
		;;
	clean)
		echo "start to clean!!"
		rm arch/arm64/boot/Image -f
		rm arch/arm/boot/zImage -f
		make distclean
		;;
	*)
		echo "usage:"
		echo "./build.sh [platform]"
		echo " "
		echo "eg:"
		echo "   ./build.sh arm64"
		echo "   ./build.sh arm"
		;;
esac


