#!/bin/bash

CONFIG=/tmp/config.sh

if [ -f $CONFIG ]; then
   chmod +x $CONFIG
   $CONFIG
   rm $CONFIG
fi

/usr/sbin/sshd -D &
/usr/sbin/vsftpd /etc/vsftpd.conf &
nginx -g "daemon off;"
