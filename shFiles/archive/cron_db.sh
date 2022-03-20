#!/bin/bash
#sleep 2
#rm $/data/db/mar10000_hse_week.sql
sleep 2
mysqldump -u"mar10000_hse" -p"marhse" --opt mar10000_hse > ~/data/db/mar10000_hse_hour.sql
