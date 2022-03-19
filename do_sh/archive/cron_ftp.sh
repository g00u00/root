#!/bin/bash

# $1 is the file name for the you want to tranfer
# usage: this_script  <filename>
IP_address="162.253.64.30"
#domain = sample.domain.ftp
username="marshirov"
password="e"


ftp -n -i $IP_address <<EOF
 verbose
 open $IP_address
 user $username $password
 cd ~/data/ssd.nn2000.info/i
# put $1 
# put ~/marshirov.tar.bz2 
 ls -la
bye
EOF
