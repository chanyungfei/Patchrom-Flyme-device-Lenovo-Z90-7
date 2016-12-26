#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:31971328:aaa36141ba175fb94314a4ea30131bded7c918ed; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:28491776:73119eba820b80f5ff0db342c50ac8abf150686c EMMC:/dev/block/bootdevice/by-name/recovery aaa36141ba175fb94314a4ea30131bded7c918ed 31971328 73119eba820b80f5ff0db342c50ac8abf150686c:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
