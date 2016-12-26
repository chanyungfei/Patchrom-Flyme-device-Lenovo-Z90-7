#!/bin/bash

TARGET_DIR=out/merged_target_files

echo ">>> in custom_targetfiles"
cp -f overlay/SuperSU/SuperSU.zip $TARGET_DIR/META
cp -f overlay/firmware-update/emmc_appsboot.mbn $TARGET_DIR/BOOTABLE_IMAGES/
cp -f overlay/firmware-update/hyp.mbn $TARGET_DIR/BOOTABLE_IMAGES/
cp -f overlay/firmware-update/NON-HLOS.bin $TARGET_DIR/BOOTABLE_IMAGES/
cp -f overlay/firmware-update/rpm.mbn $TARGET_DIR/BOOTABLE_IMAGES/
cp -f overlay/firmware-update/sbl1.mbn $TARGET_DIR/BOOTABLE_IMAGES/
cp -f overlay/firmware-update/splash.bin $TARGET_DIR/BOOTABLE_IMAGES/
cp -f overlay/firmware-update/tz.mbn $TARGET_DIR/BOOTABLE_IMAGES/