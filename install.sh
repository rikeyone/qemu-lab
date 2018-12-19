#!/bin/bash

sudo apt-get install qemu libncurses5-dev build-essential
sudo apt-get install gcc-arm-linux-gnueabi 
sudo apt-get install gcc-aarch64-linux-gnu

qemu-system-aarch64 -version

# install from source code if qemu-system-aarch64 not exsit (For version <= Ubuntu14.04)
if [ $? != 0 ]; then
	echo "qemu-system-aarch64 don't exsit! compile it!"
	sudo apt-get build-dep qemu
	tar -jxf tar/qemu-2.11.0.tar.bz2
	cd qemu-2.11.0
	./configure --target-list=aarch64-softmmu
	make
	sudo make install
	rm qemu-2.11.0 -rf
else
	echo "qemu-system-aarch64 already exsit!"
fi

echo "Install success!!"
