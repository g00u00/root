#!/bin/bash

# $1 is the file name for the you want to tranfer
# usage: this_script  <filename>
IP_address="ftp.drivehq.com"
username="marshirov"
password="eHc4C37L"


ftp -n -i $IP_address <<EOF
 verbose
 open $domain
 user $username $password
# put $1
put /var/www/marshirov/data/sh/notroot.sh notroot.sh  
ls -la
bye
EOF
