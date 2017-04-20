#!/system/bin/sh

# setup log service
if [ -e /local/log/aplog/aplogsetting.enable ]; then
    for svc in dmesglog tcplog mainlog radiolog ; do
        if [ -e /local/log/aplog/${svc}.enable ]; then
            setprop ctl.start $svc
        else
            setprop ctl.stop $svc
        fi
    done

    if [ -e /local/log/aplog/dloadlog.enable ]; then
        setprop persist.sys.dloadmode.config 1
    else
        setprop persist.sys.dloadmode.config 0
    fi
elif [ $(getprop ro.debuggable) = 1 ]; then
    setprop ctl.start dmesglog
    setprop ctl.start tcplog
    setprop ctl.start mainlog
    setprop ctl.start radiolog
    setprop persist.sys.dloadmode.config 1
else
    setprop persist.sys.dloadmode.config 0
fi

rm -r /data/lost+found

