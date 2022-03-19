#!/bin/bash

# $1 is the file name for the you want to tranfer
# usage: this_script  <filename>
IP_address="176.56.236.158"
#domain = sample.domain.ftp
username="archive"
password="archive"


ftp -n -i $IP_address <<EOF
 verbose
 open $IP_address
 user $username $password
# put $1
put /var/www/marshirov/marshirov.tar.bz2 /var/www/archive/i/marshirov.tar.bz2 
cd i
ls -la
bye
EOF
