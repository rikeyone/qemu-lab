cmd_libbb/perror_nomsg_and_die.o := aarch64-linux-gnu-gcc -Wp,-MD,libbb/.perror_nomsg_and_die.o.d   -std=gnu99 -Iinclude -Ilibbb  -include include/autoconf.h -D_GNU_SOURCE -DNDEBUG -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D"BB_VER=KBUILD_STR(1.24.0)" -DBB_BT=AUTOCONF_TIMESTAMP  -Wall -Wshadow -Wwrite-strings -Wundef -Wstrict-prototypes -Wunused -Wunused-parameter -Wunused-function -Wunused-value -Wmissing-prototypes -Wmissing-declarations -Wno-format-security -Wdeclaration-after-statement -Wold-style-definition -fno-builtin-strlen -finline-limit=0 -fomit-frame-pointer -ffunction-sections -fdata-sections -fno-guess-branch-probability -funsigned-char -static-libgcc -falign-functions=1 -falign-jumps=1 -falign-labels=1 -falign-loops=1 -fno-unwind-tables -fno-asynchronous-unwind-tables -fno-builtin-printf -Os     -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(perror_nomsg_and_die)"  -D"KBUILD_MODNAME=KBUILD_STR(perror_nomsg_and_die)" -c -o libbb/perror_nomsg_and_die.o libbb/perror_nomsg_and_die.c

deps_libbb/perror_nomsg_and_die.o := \
  libbb/perror_nomsg_and_die.c \
  /usr/aarch64-linux-gnu/include/stdc-predef.h \
  include/platform.h \
    $(wildcard include/config/werror.h) \
    $(wildcard include/config/big/endian.h) \
    $(wildcard include/config/little/endian.h) \
    $(wildcard include/config/nommu.h) \
  /usr/lib/gcc-cross/aarch64-linux-gnu/4.8/include-fixed/limits.h \
  /usr/lib/gcc-cross/aarch64-linux-gnu/4.8/include-fixed/syslimits.h \
  /usr/aarch64-linux-gnu/include/limits.h \
  /usr/aarch64-linux-gnu/include/features.h \
  /usr/aarch64-linux-gnu/include/sys/cdefs.h \
  /usr/aarch64-linux-gnu/include/bits/wordsize.h \
  /usr/aarch64-linux-gnu/include/gnu/stubs.h \
  /usr/aarch64-linux-gnu/include/gnu/stubs-lp64.h \
  /usr/aarch64-linux-gnu/include/bits/posix1_lim.h \
  /usr/aarch64-linux-gnu/include/bits/local_lim.h \
  /usr/aarch64-linux-gnu/include/linux/limits.h \
  /usr/aarch64-linux-gnu/include/bits/posix2_lim.h \
  /usr/aarch64-linux-gnu/include/bits/xopen_lim.h \
  /usr/aarch64-linux-gnu/include/bits/stdio_lim.h \
  /usr/aarch64-linux-gnu/include/byteswap.h \
  /usr/aarch64-linux-gnu/include/bits/byteswap.h \
  /usr/aarch64-linux-gnu/include/bits/types.h \
  /usr/aarch64-linux-gnu/include/bits/typesizes.h \
  /usr/aarch64-linux-gnu/include/bits/byteswap-16.h \
  /usr/aarch64-linux-gnu/include/endian.h \
  /usr/aarch64-linux-gnu/include/bits/endian.h \
  /usr/lib/gcc-cross/aarch64-linux-gnu/4.8/include/stdint.h \
  /usr/aarch64-linux-gnu/include/stdint.h \
  /usr/aarch64-linux-gnu/include/bits/wchar.h \
  /usr/lib/gcc-cross/aarch64-linux-gnu/4.8/include/stdbool.h \
  /usr/aarch64-linux-gnu/include/unistd.h \
  /usr/aarch64-linux-gnu/include/bits/posix_opt.h \
  /usr/aarch64-linux-gnu/include/bits/environments.h \
  /usr/lib/gcc-cross/aarch64-linux-gnu/4.8/include/stddef.h \
  /usr/aarch64-linux-gnu/include/bits/confname.h \
  /usr/aarch64-linux-gnu/include/getopt.h \
  /usr/aarch64-linux-gnu/include/bits/unistd.h \

libbb/perror_nomsg_and_die.o: $(deps_libbb/perror_nomsg_and_die.o)

$(deps_libbb/perror_nomsg_and_die.o):
