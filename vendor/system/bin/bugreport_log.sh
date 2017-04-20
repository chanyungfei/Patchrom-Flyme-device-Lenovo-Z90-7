#!/system/bin/sh

umask 022

if [ $(getprop persist.sys.lenovo.log.path) = INVALID ]; then
	exit
fi

if [ -z "$1" ]; then
	LOGDIR=$(getprop persist.sys.lenovo.log.path)
else 
	LOGDIR=$1  
fi

BUGREPORT_LOGFILE=$LOGDIR"/bugreport.txt"
/system/bin/bugreport > $BUGREPORT_LOGFILE
