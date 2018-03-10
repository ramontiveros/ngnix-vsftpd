#!/bin/bash

CONFIG=/root/config.sh

if [ -f $CONFIG ]; then
   chmod +x $CONFIG
   $CONFIG
fi

/usr/sbin/sshd -D
/usr/sbin/vsftpd /etc/vsftpd.conf &
nginx -g "daemon off;"