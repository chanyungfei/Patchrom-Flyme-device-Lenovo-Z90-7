#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:21792044:5cbce0c0333398b269792338e58cdc51dfee3cc8; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:18136360:ba6481b5987009686ab915f408cb8091621ffc7b EMMC:/dev/block/bootdevice/by-name/recovery 5cbce0c0333398b269792338e58cdc51dfee3cc8 21792044 ba6481b5987009686ab915f408cb8091621ffc7b:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
