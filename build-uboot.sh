# sudo apt update
# sudo apt install -y flex gcc-arm-linux-gnueabi

# wget https://ftp.denx.de/pub/u-boot/u-boot-2022.07-rc3.tar.bz2
# tar -xf u-boot-2022.07-rc3.tar.bz2


cd u-boot-2022.07-rc3
make distclean
export set ARCH=arm
export set CROSS_COMPILE=arm-linux-gnueabi-
make qemu_arm_defconfig
make -j $(nproc)
cp u-boot.bin ../u-boot.bin