# description
This is an develop test environment for linux kernel using QEMU virtual machine.

# install
```
./install.sh
```
It will install compile tools chains of arm and arm64, and qemu environment.

# build busybox
```
./build_busybox.sh  xxx

eg:
./build_busybox.sh arm      #compile arm platform 
./build_busybox.sh arm64    #compile arm64 platform
```

# build rootfs
```
./build_rootfs.sh xxx

eg:
./build_rootfs.sh arm      #compile arm platform 
./build_rootfs.sh arm64    #compile arm64 platform
```
This build will invoke build_busybox.sh to generate busybox bin for rootfs.

# build kernel
```
./build_kernel.sh
eg:
./build_kernel.sh arm      #compile arm platform 
./build_kernel.sh arm64    #compile arm64 platform
```

# run qemu
```
qemu_start.sh arm
qemu_start.sh arm64
```

# stop qemu
```
qemu_stop.sh arm
qemu_stop.sh arm64
```
