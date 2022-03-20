#!/bin/bash
rm /var/log/apache2/*.*
sleep 2
service apache2 restart

