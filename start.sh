#!/bin/bash
CONFIG=/root/config.sh
cp /tmp/config.sh $CONFIG

if [ -f $CONFIG ]; then
   chmod +x $CONFIG
   $CONFIG
   rm $CONFIG
fi

/usr/sbin/sshd -D &
/usr/sbin/vsftpd /etc/vsftpd.conf &
nginx -g "daemon off;"
