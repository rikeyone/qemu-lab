cmd_coreutils/cal.o := aarch64-linux-gnu-gcc -Wp,-MD,coreutils/.cal.o.d   -std=gnu99 -Iinclude -Ilibbb  -include include/autoconf.h -D_GNU_SOURCE -DNDEBUG -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D"BB_VER=KBUILD_STR(1.24.0)" -DBB_BT=AUTOCONF_TIMESTAMP  -Wall -Wshadow -Wwrite-strings -Wundef -Wstrict-prototypes -Wunused -Wunused-parameter -Wunused-function -Wunused-value -Wmissing-prototypes -Wmissing-declarations -Wno-format-security -Wdeclaration-after-statement -Wold-style-definition -fno-builtin-strlen -finline-limit=0 -fomit-frame-pointer -ffunction-sections -fdata-sections -fno-guess-branch-probability -funsigned-char -static-libgcc -falign-functions=1 -falign-jumps=1 -falign-labels=1 -falign-loops=1 -fno-unwind-tables -fno-asynchronous-unwind-tables -fno-builtin-printf -Os     -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(cal)"  -D"KBUILD_MODNAME=KBUILD_STR(cal)" -c -o coreutils/cal.o coreutils/cal.c

deps_coreutils/cal.o := \
  coreutils/cal.c \
    $(wildcard include/config/unicode/support.h) \
  /usr/aarch64-linux-gnu/include/stdc-predef.h \
  include/libbb.h \
    $(wildcard include/config/feature/shadowpasswds.h) \
    $(wildcard include/config/use/bb/shadow.h) \
    $(wildcard include/config/selinux.h) \
    $(wildcard include/config/feature/utmp.h) \
    $(wildcard include/config/locale/support.h) \
    $(wildcard include/config/use/bb/pwd/grp.h) \
    $(wildcard include/config/lfs.h) \
    $(wildcard include/config/feature/buffers/go/on/stack.h) \
    $(wildcard include/config/feature/buffers/go/in/bss.h) \
    $(wildcard include/config/feature/verbose.h) \
    $(wildcard include/config/feature/ipv6.h) \
    $(wildcard include/config/feature/seamless/xz.h) \
    $(wildcard include/config/feature/seamless/lzma.h) \
    $(wildcard include/config/feature/seamless/bz2.h) \
    $(wildcard include/config/feature/seamless/gz.h) \
    $(wildcard include/config/feature/seamless/z.h) \
    $(wildcard include/config/feature/check/names.h) \
    $(wildcard include/config/feature/prefer/applets.h) \
    $(wildcard include/config/long/opts.h) \
    $(wildcard include/config/feature/getopt/long.h) \
    $(wildcard include/config/feature/pidfile.h) \
    $(wildcard include/config/feature/syslog.h) \
    $(wildcard include/config/feature/individual.h) \
    $(wildcard include/config/echo.h) \
    $(wildcard include/config/printf.h) \
    $(wildcard include/config/test.h) \
    $(wildcard include/config/kill.h) \
    $(wildcard include/config/chown.h) \
    $(wildcard include/config/ls.h) \
    $(wildcard include/config/xxx.h) \
    $(wildcard include/config/route.h) \
    $(wildcard include/config/feature/hwib.h) \
    $(wildcard include/config/desktop.h) \
    $(wildcard include/config/feature/crond/d.h) \
    $(wildcard include/config/use/bb/crypt.h) \
    $(wildcard include/config/feature/adduser/to/group.h) \
    $(wildcard include/config/feature/del/user/from/group.h) \
    $(wildcard include/config/ioctl/hex2str/error.h) \
    $(wildcard include/config/feature/editing.h) \
    $(wildcard include/config/feature/editing/history.h) \
    $(wildcard include/config/feature/editing/savehistory.h) \
    $(wildcard include/config/feature/tab/completion.h) \
    $(wildcard include/config/feature/username/completion.h) \
    $(wildcard include/config/feature/editing/vi.h) \
    $(wildcard include/config/feature/editing/save/on/exit.h) \
    $(wildcard include/config/pmap.h) \
    $(wildcard include/config/feature/show/threads.h) \
    $(wildcard include/config/feature/ps/additional/columns.h) \
    $(wildcard include/config/feature/topmem.h) \
    $(wildcard include/config/feature/top/smp/process.h) \
    $(wildcard include/config/killall.h) \
    $(wildcard include/config/pgrep.h) \
    $(wildcard include/config/pkill.h) \
    $(wildcard include/config/pidof.h) \
    $(wildcard include/config/sestatus.h) \
    $(wildcard include/config/feature/mtab/support.h) \
    $(wildcard include/config/feature/clean/up.h) \
    $(wildcard include/config/feature/devfs.h) \
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
  /usr/aarch64-linux-gnu/include/ctype.h \
  /usr/aarch64-linux-gnu/include/xlocale.h \
  /usr/aarch64-linux-gnu/include/dirent.h \
  /usr/aarch64-linux-gnu/include/bits/dirent.h \
  /usr/aarch64-linux-gnu/include/errno.h \
  /usr/aarch64-linux-gnu/include/bits/errno.h \
  /usr/aarch64-linux-gnu/include/linux/errno.h \
  /usr/aarch64-linux-gnu/include/asm/errno.h \
  /usr/aarch64-linux-gnu/include/asm-generic/errno.h \
  /usr/aarch64-linux-gnu/include/asm-generic/errno-base.h \
  /usr/aarch64-linux-gnu/include/fcntl.h \
  /usr/aarch64-linux-gnu/include/bits/fcntl.h \
  /usr/aarch64-linux-gnu/include/bits/fcntl-linux.h \
  /usr/aarch64-linux-gnu/include/bits/uio.h \
  /usr/aarch64-linux-gnu/include/sys/types.h \
  /usr/aarch64-linux-gnu/include/time.h \
  /usr/aarch64-linux-gnu/include/sys/select.h \
  /usr/aarch64-linux-gnu/include/bits/select.h \
  /usr/aarch64-linux-gnu/include/bits/sigset.h \
  /usr/aarch64-linux-gnu/include/bits/time.h \
  /usr/aarch64-linux-gnu/include/bits/select2.h \
  /usr/aarch64-linux-gnu/include/sys/sysmacros.h \
  /usr/aarch64-linux-gnu/include/bits/pthreadtypes.h \
  /usr/aarch64-linux-gnu/include/bits/stat.h \
  /usr/aarch64-linux-gnu/include/bits/fcntl2.h \
  /usr/aarch64-linux-gnu/include/inttypes.h \
  /usr/aarch64-linux-gnu/include/netdb.h \
  /usr/aarch64-linux-gnu/include/netinet/in.h \
  /usr/aarch64-linux-gnu/include/sys/socket.h \
  /usr/aarch64-linux-gnu/include/sys/uio.h \
  /usr/aarch64-linux-gnu/include/bits/socket.h \
  /usr/aarch64-linux-gnu/include/bits/socket_type.h \
  /usr/aarch64-linux-gnu/include/bits/sockaddr.h \
  /usr/aarch64-linux-gnu/include/asm/socket.h \
  /usr/aarch64-linux-gnu/include/asm-generic/socket.h \
  /usr/aarch64-linux-gnu/include/asm/sockios.h \
  /usr/aarch64-linux-gnu/include/asm-generic/sockios.h \
  /usr/aarch64-linux-gnu/include/bits/socket2.h \
  /usr/aarch64-linux-gnu/include/bits/in.h \
  /usr/aarch64-linux-gnu/include/rpc/netdb.h \
  /usr/aarch64-linux-gnu/include/bits/siginfo.h \
  /usr/aarch64-linux-gnu/include/bits/netdb.h \
  /usr/aarch64-linux-gnu/include/setjmp.h \
  /usr/aarch64-linux-gnu/include/bits/setjmp.h \
  /usr/aarch64-linux-gnu/include/bits/setjmp2.h \
  /usr/aarch64-linux-gnu/include/signal.h \
  /usr/aarch64-linux-gnu/include/bits/signum.h \
  /usr/aarch64-linux-gnu/include/bits/sigaction.h \
  /usr/aarch64-linux-gnu/include/bits/sigcontext.h \
  /usr/aarch64-linux-gnu/include/asm/sigcontext.h \
  /usr/aarch64-linux-gnu/include/linux/types.h \
  /usr/aarch64-linux-gnu/include/asm/types.h \
  /usr/aarch64-linux-gnu/include/asm-generic/types.h \
  /usr/aarch64-linux-gnu/include/asm-generic/int-ll64.h \
  /usr/aarch64-linux-gnu/include/asm/bitsperlong.h \
  /usr/aarch64-linux-gnu/include/asm-generic/bitsperlong.h \
    $(wildcard include/config/64bit.h) \
  /usr/aarch64-linux-gnu/include/linux/posix_types.h \
  /usr/aarch64-linux-gnu/include/linux/stddef.h \
  /usr/aarch64-linux-gnu/include/asm/posix_types.h \
  /usr/aarch64-linux-gnu/include/asm-generic/posix_types.h \
  /usr/aarch64-linux-gnu/include/bits/sigstack.h \
  /usr/aarch64-linux-gnu/include/sys/ucontext.h \
  /usr/aarch64-linux-gnu/include/sys/procfs.h \
  /usr/aarch64-linux-gnu/include/sys/time.h \
  /usr/aarch64-linux-gnu/include/sys/user.h \
  /usr/aarch64-linux-gnu/include/asm/ptrace.h \
  /usr/aarch64-linux-gnu/include/asm/hwcap.h \
  /usr/aarch64-linux-gnu/include/bits/sigthread.h \
  /usr/aarch64-linux-gnu/include/stdio.h \
  /usr/aarch64-linux-gnu/include/libio.h \
  /usr/aarch64-linux-gnu/include/_G_config.h \
  /usr/aarch64-linux-gnu/include/wchar.h \
  /usr/lib/gcc-cross/aarch64-linux-gnu/4.8/include/stdarg.h \
  /usr/aarch64-linux-gnu/include/bits/sys_errlist.h \
  /usr/aarch64-linux-gnu/include/bits/stdio2.h \
  /usr/aarch64-linux-gnu/include/stdlib.h \
  /usr/aarch64-linux-gnu/include/bits/waitflags.h \
  /usr/aarch64-linux-gnu/include/bits/waitstatus.h \
  /usr/aarch64-linux-gnu/include/alloca.h \
  /usr/aarch64-linux-gnu/include/bits/stdlib-float.h \
  /usr/aarch64-linux-gnu/include/bits/stdlib.h \
  /usr/aarch64-linux-gnu/include/string.h \
  /usr/aarch64-linux-gnu/include/bits/string3.h \
  /usr/aarch64-linux-gnu/include/libgen.h \
  /usr/aarch64-linux-gnu/include/poll.h \
  /usr/aarch64-linux-gnu/include/sys/poll.h \
  /usr/aarch64-linux-gnu/include/bits/poll.h \
  /usr/aarch64-linux-gnu/include/bits/poll2.h \
  /usr/aarch64-linux-gnu/include/sys/ioctl.h \
  /usr/aarch64-linux-gnu/include/bits/ioctls.h \
  /usr/aarch64-linux-gnu/include/asm/ioctls.h \
  /usr/aarch64-linux-gnu/include/asm-generic/ioctls.h \
  /usr/aarch64-linux-gnu/include/linux/ioctl.h \
  /usr/aarch64-linux-gnu/include/asm/ioctl.h \
  /usr/aarch64-linux-gnu/include/asm-generic/ioctl.h \
  /usr/aarch64-linux-gnu/include/bits/ioctl-types.h \
  /usr/aarch64-linux-gnu/include/sys/ttydefaults.h \
  /usr/aarch64-linux-gnu/include/sys/mman.h \
  /usr/aarch64-linux-gnu/include/bits/mman.h \
  /usr/aarch64-linux-gnu/include/bits/mman-linux.h \
  /usr/aarch64-linux-gnu/include/sys/stat.h \
  /usr/aarch64-linux-gnu/include/sys/wait.h \
  /usr/aarch64-linux-gnu/include/termios.h \
  /usr/aarch64-linux-gnu/include/bits/termios.h \
  /usr/aarch64-linux-gnu/include/bits/timex.h \
  /usr/aarch64-linux-gnu/include/sys/param.h \
  /usr/aarch64-linux-gnu/include/bits/param.h \
  /usr/aarch64-linux-gnu/include/linux/param.h \
  /usr/aarch64-linux-gnu/include/asm/param.h \
  /usr/aarch64-linux-gnu/include/asm-generic/param.h \
  /usr/aarch64-linux-gnu/include/pwd.h \
  /usr/aarch64-linux-gnu/include/grp.h \
  /usr/aarch64-linux-gnu/include/mntent.h \
  /usr/aarch64-linux-gnu/include/paths.h \
  /usr/aarch64-linux-gnu/include/sys/statfs.h \
  /usr/aarch64-linux-gnu/include/bits/statfs.h \
  /usr/aarch64-linux-gnu/include/utmpx.h \
  /usr/aarch64-linux-gnu/include/bits/utmpx.h \
  /usr/aarch64-linux-gnu/include/arpa/inet.h \
  include/pwd_.h \
  include/grp_.h \
  include/shadow_.h \
  include/xatonum.h \
  include/unicode.h \
    $(wildcard include/config/unicode/using/locale.h) \
    $(wildcard include/config/last/supported/wchar.h) \
    $(wildcard include/config/unicode/combining/wchars.h) \
    $(wildcard include/config/unicode/wide/wchars.h) \
    $(wildcard include/config/unicode/bidi/support.h) \
    $(wildcard include/config/feature/check/unicode/in/env.h) \
    $(wildcard include/config/unicode/neutral/table.h) \

coreutils/cal.o: $(deps_coreutils/cal.o)

$(deps_coreutils/cal.o):
