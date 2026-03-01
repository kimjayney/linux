#!/bin/bash

echo "configure build output path"
KERNEL_TOP_PATH="$( cd "$(dirname "$0")" ; pwd -P )"
OUTPUT="$KERNEL_TOP_PATH/out"
echo $OUTPUT

KERNEL=kernel7
BUILD_LOG="$KERNEL_TOP_PATH/rpi-build_log.txt"
echo "move kernel source"
echo "make defconfig"
make O=$OUTPUT ARCH=arm CROSS_COMPILE=arm-linux-gnu- bcm2709_defconfig
echo "kernel build"
make O=$OUTPUT ARCH=arm CROSS_COMPILE=arm-linux-gnu- -j$(nproc) zImage modules dtbs | tee $BUILD_LOG
