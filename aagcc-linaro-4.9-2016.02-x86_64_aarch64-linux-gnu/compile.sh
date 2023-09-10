export CROSS_COMPILE=$(pwd)/aagcc-linaro-4.9-2016.02-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-
export ARCH=arm64
make clean
make mrproper
mkdir -p out
make O=out clean
make O=out mrproper
make O=out j4primelte_defconfig
make O=out -j4

