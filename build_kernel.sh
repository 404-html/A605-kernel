#!/bin/bash

export ARCH=arm64
export CROSS_COMPILE=$(pwd)/../aarch64-linux-android-4.9/bin/aarch64-linux-android-

mkdir $(pwd)/out
make -C $(pwd) O=$(pwd)/out KCFLAGS=-mno-android a6plte_eur_open_defconfig
make -j16 -C $(pwd) O=$(pwd)/out KCFLAGS=-mno-android
