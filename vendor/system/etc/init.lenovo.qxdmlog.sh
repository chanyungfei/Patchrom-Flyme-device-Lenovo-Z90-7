#!/system/bin/sh

#Copyright (c) 2015 Lenovo Co. Ltd	
#Authors: yexh1@lenovo.com

umask 022


if [ -z "$1" ]; then
	LOGDIR=$(getprop persist.sys.lenovo.log.path)
else 
	LOGDIR=$1  
fi

if [ -z "$2" ]; then
	CFGFILE=$(getprop persist.sys.lenovo.log.qxdmcfg)
else 
	CFGFILE=$2  
fi

chmod 777 $CFGFILE

if [ ! -f "/dev/diag" ]; then
    #in Android 5.0, if have dev/diag will cause CTS fail VIBEUIDEVL-329
    #insmod /system/lib/modules/diagchar.ko
    ln /dev/diag /dev/diag_back	
fi


#if [[ $CFGFILE = *"$DATAMEDIA"* ]];then
#CFGNAME=`echo $CFGFILE | /sbin/busybox awk '{print substr($0, 14)}'`  &&  CFGNAME="$STORAGE""$CFGNAME"
#fi

#kill the diag_mdlog process at first
/system/bin/diag_mdlog -k
# -s set the single log size in MB 
/system/bin/diag_mdlog -s 512 -n 20 -f $CFGFILE -o $LOGDIR
