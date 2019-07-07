#!/bin/sh

echo "uftp:uftp" | /usr/sbin/chpasswd

chown uftp:uftp /home/uftp/ -R

/usr/sbin/vsftpd /vsftpd.custom.conf