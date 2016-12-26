#bt rf test for EngineerTest apk, call by service bt_rf_test

setprop bt.rftest.status 0
setprop bt.rftest.error "exec bttool fail"
setprop bt.rftest.result ""

mode=`getprop bt.rftest.mode`
channel=`getprop bt.rftest.channel`
pattern=`getprop bt.rftest.pattern_type`
packet=`getprop bt.rftest.packet_type`


LOG_TAG="bt-rftest"
LOG_NAME="${0}:"

loge ()
{
  /system/bin/log -t $LOG_TAG -p e "$LOG_NAME $@"
}

logi ()
{
  /system/bin/log -t $LOG_TAG -p i "$LOG_NAME $@"
}

failed ()
{
  loge "$1: exit code $2"
  exit $2
}

loge "bt rftest start"
loge "mode: $mode"
loge "channel: $channel"
loge "pattern : $pattern"
loge "packet : $packet"

#
case $mode in
  "duttest_on")
    /system/xbin/bttool rf duton
     ;;
  "duttest_off")
    /system/xbin/bttool rf dutoff
     ;;
  "tx_on")
    /system/xbin/bttool rf tx $channel $pattern $packet
     ;;
  "rx_on")
    /system/xbin/bttool rf rx $channel $pattern $packet
     ;;
  "tx_off")
    /system/xbin/bttool rf reset
     ;;
  "rx_off")
    /system/xbin/bttool rf rxresult
     ;;
  "ble_tx")
    /system/xbin/bttool rf letx $channel $pattern
     ;;
  "ble_rx")
    /system/xbin/bttool rf lerx $channel
     ;;
  "ble_end")
    /system/xbin/bttool rf lerxresult
     ;;
   "cw_on")
#    /system/xbin/bttool cw_tx $channel $pattern
    setprop bt.rftest.error "Unsupport cw_on"
     ;;
   "cw_off")
#    /system/xbin/bttool cw_stop $pattern
    setprop bt.rftest.error "Unsupport cw_off"
     ;;
   *)
    logi "Unkonw bt rf test cmd"
    setprop bt.rftest.error "Unknow bt rf test cmd"
    ;;
esac

setprop bt.rftest.status 1
loge "bt rftest finish"

exit 0

