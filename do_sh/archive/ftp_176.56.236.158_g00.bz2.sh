#!/bin/bash

tar -cjpf /root/i/g00.bz2 /var/www/g00
ls -la  /root/i
# $1 is the file name for the you want to tranfer
# usage: this_script  <filename>
IP_address="176.56.236.158"
#domain = sample.domain.ftp
username="rn"
password="nn2..0"
ftp -n -i $IP_address <<EOF
verbose
open $IP_address
user $username $password
binary
ls std
put /root/i/g00.bz2 std/g00.bz2
chmod 711 std/g00.bz2
ls std
bye
EOF
rm /root/i/g00.bz2
ls -la  /root/i
#01 01 * * 01 /var/www/marshirov/data/sh/ftp_176.56.236.158_g_su_1_2.tar.bz2.sh
