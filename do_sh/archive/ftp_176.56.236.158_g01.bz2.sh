#!/bin/bash
tar -cjf /tmp/g01.bz2 /var/www/g01
ls -la  /tmp
# $1 is the file name for the you want to tranfer
# usage: this_script  <filename>
IP_address="176.56.236.158"
#domain = sample.domain.ftp
username="g01u00"
password="torrent"
ftp -n -i $IP_address <<EOF
verbose
open $IP_address
user $username $password
binary
ls tmp
put /tmp/g01.bz2 tmp/g01.bz2
chmod 711 tmp/g01.bz2
ls tmp
bye
EOF
rm /tmp/g01.bz2
ls -la  /tmp
#01 01 * * 01 /var/www/marshirov/data/sh/ftp_176.56.236.158_g_su_1_2.tar.bz2.sh
