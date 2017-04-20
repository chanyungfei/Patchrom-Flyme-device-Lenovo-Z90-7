#!/system/bin/sh

APLOG_DIR=/data/local/log/aplog
GPSLOG_DIR=/data/gps/log
HCIDUMP_DIR=/data/hcidump
ANR_DIR=/data/anr
RECOVERY_DIR=/cache/recovery
CRASH_DIR=/data/tombstones
BT_ENABLE=$APLOG_DIR/bluetooth.enable
BT_DIR=/data/misc/bluedroid
BT_ETC_DIR=/system/etc/bluetooth
WLAN_DIR=/data/misc/wifi

cd $APLOG_DIR && rm -fr gps hcidump anr recovery bluetooth wlan
ps -t -p -P > $APLOG_DIR/ps.txt
dumpsys alarm > $APLOG_DIR/alarm.txt
dumpsys power > $APLOG_DIR/power.txt
getprop > $APLOG_DIR/prop.txt
[ -e /system/build.prop ] && cp /system/build.prop $APLOG_DIR/
[ -e /system/etc/version.conf ] && cp /system/etc/version.conf $APLOG_DIR/
[ -d $GPSLOG_DIR ] && cp -a $GPSLOG_DIR $APLOG_DIR/gps
[ -d $HCIDUMP_DIR ] && cp -a $HCIDUMP_DIR $APLOG_DIR/hcidump
[ -d $ANR_DIR ] &&  cp -a $ANR_DIR $APLOG_DIR/anr
[ -d $RECOVERY_DIR ] && cp -a $RECOVERY_DIR $APLOG_DIR/recovery
[ -d $CRASH_DIR ] && cp -a $CRASH_DIR $APLOG_DIR/tombstones
[ -e $BT_ENABLE ] && [ -d $BT_ETC_DIR ] && cp -a $BT_ETC_DIR $APLOG_DIR/bluetooth
[ -e $BT_ENABLE ] && [ -d $BT_DIR ] && cp $BT_DIR/* $APLOG_DIR/bluetooth
[ -d $WLAN_DIR ] && cp -a $WLAN_DIR $APLOG_DIR/wlan

FILENAME=$(date +%Y_%m_%d_%H_%M_%S)

mkdir -p /sdcard/log
tar zcf /sdcard/log/${FILENAME}.tgz -C /data/local/log aplog

