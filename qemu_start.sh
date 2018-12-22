#!/bin/bash

arch=$1

if [ "${arch}" = "" ];then
	arch=arm64
fi

if [ "${arch}" = "arm" ];then
	qemu-system-arm -M vexpress-a9 \
		-smp 4 \
		-m 1024M \
		-kernel linux-4.0/arch/arm/boot/zImage \
		-append "rdinit=/linuxrc console=ttyAMA0 loglevel=8" \
		-dtb linux-4.0/arch/arm/boot/dts/vexpress-v2p-ca9.dtb \
		-nographic
else
	qemu-system-aarch64 -machine virt \
		-cpu cortex-a57 \
		-machine type=virt \
		-nographic -m 2048 \
		-smp 2 \
		-kernel linux-4.0/arch/arm64/boot/Image \
		-append "rdinit=/linuxrc console=ttyAMA0 loglevel=8  trace_event=sched:*,timer:*,irq:* trace_buf_size=40M"
fi
