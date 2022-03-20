# Edit this file to introduce tasks to be run by cron.
# 
# Each task to run has to be defined through a single line
# indicating with different fields when the task will be run
# and what command to run for the task
# 
# To define the time you can provide concrete values for
# minute (m), hour (h), day of month (dom), month (mon),
# and day of week (dow) or use '*' in these fields (for 'any').# 
# Notice that tasks will be started based on the cron's system
# daemon's notion of time and timezones.
# 
# Output of the crontab jobs (including errors) is sent through
# email to the user the crontab file belongs to (unless redirected).
# 
# For example, you can run a backup of all your user accounts
# at 5 a.m every week with:
# 0 5 * * 1 tar -zcf /var/backups/home.tgz /home/
# 
# For more information see the manual pages of crontab(5) and cron(8)
# 
# m h  dom mon dow   command
59 * * * *  rm -f ~/data/etc/*.log
59 * * * *  rm -f /var/mail/marshirov
05 * * * *  ~/data/sh/cron_db.sh
06 3 * * *  ~/data/sh/cron_tar.sh
05 * * * * mysqldump -u"mar10000_hse" -p"marhse" --opt mar10000_hse > ~/data/db/mar10000_hse_01_h.sql
0 01 * * 1  mysqldump -u"mar10000_hse" -p"marhse" --opt mar10000_hse > ~/data/db/mar10000_hse_1.sql
0 01 * * 2  mysqldump -u"mar10000_hse" -p"marhse" --opt mar10000_hse > ~/data/db/mar10000_hse_2.sql
0 01 * * 3  mysqldump -u"mar10000_hse" -p"marhse" --opt mar10000_hse > ~/data/db/mar10000_hse_3.sql
0 01 * * 4  mysqldump -u"mar10000_hse" -p"marhse" --opt mar10000_hse > ~/data/db/mar10000_hse_4.sql
0 01 * * 5  mysqldump -u"mar10000_hse" -p"marhse" --opt mar10000_hse > ~/data/db/mar10000_hse_5.sql
0 01 * * 6  mysqldump -u"mar10000_hse" -p"marhse" --opt mar10000_hse > ~/data/db/mar10000_hse_6.sql
0 01 * * 7  mysqldump -u"mar10000_hse" -p"marhse" --opt mar10000_hse > ~/data/db/mar10000_hse_7.sql
04 04 * * 7  cp -rf ~/data/db/*.* ~/data/db_past_week_all/
04 04 * * 1  ~/data/sh/yandex.sh
#04 03 * * 4  ~/sh/cron_ftp.sh
#04 03 * * 4  ~/sh/cron_ftp.sh ~/marshirov.tar.bz2
