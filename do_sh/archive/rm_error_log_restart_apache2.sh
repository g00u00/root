#!/bin/bash
rm /var/log/apache2/error.log
sleep 2
service apache2 restart

