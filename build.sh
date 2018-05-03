#!/bin/bash


build_arm64() {
	echo "start to build ARM64 $1 kernel image!!"
	export ARCH=arm64
	export CROSS_COMPILE=aarch64-linux-gnu-
	make $1 
	make -j8
}

build_arm() {
	echo "start to build ARM $1 kernel image!!"
	export ARCH=arm
	export CROSS_COMPILE=arm-linux-gnueabi-
	make $1 
	make bzImage -j8
	make dtbs
}


#main entry

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
		build_arm64 qemu_defconfig
		;;
	arm)
		build_arm qemu_defconfig
		;;
	select)
		echo "start to select config to build kernel image!!"
		i=0
		arch=($(ls arch/))
		for file in ${arch[@]}
		do
			echo ${i}:${file##*/};
			((i++));
		done
		echo please input your choice:
		read index
		target_arch=${arch[${index}]##*/}

		i=0
		configs=($(ls arch/${target_arch}/configs/*))
		for file in ${configs[@]}
		do
			echo ${i}:${file##*/};
			((i++));
		done

		echo please input your choice:
		read index
		target_config=${configs[${index}]##*/}
		echo target is: ${target_arch} ${target_config}

		if [ ${target_arch} = "arm64" ];then
			build_arm64 ${target_config}
		else
			build_arm ${target_config}
		fi	
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
		echo "   ./build.sh arm64     #build default  arm64 config"
		echo "   ./build.sh arm       #build default arm config"
		echo "   ./build.sh select    #select platform and config to build"
		;;
esac


