#!/bin/bash
echo "build start ......"
make ARCH=arm licheepi_zero_defconfig
make ARCH=arm menuconfig
make ARCH=arm CROSS_COMPILE=../gcc-4.9-gnueabihf/bin/arm-linux-gnueabihf- -j16
make ARCH=arm CROSS_COMPILE=../gcc-4.9-gnueabihf/bin/arm-linux-gnueabihf- -j16 INSTALL_MOD_PATH=out modules
make ARCH=arm CROSS_COMPILE=../gcc-4.9-gnueabihf/bin/arm-linux-gnueabihf- dtbs
