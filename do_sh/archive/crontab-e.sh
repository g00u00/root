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
   #05 * * * *  ~/data/sh/cron_db.sh
   #01 01 * * *  ~/data/sh/marshirov_tar.sh
   01 02 * * 1 /var/www/marshirov/data/sh/ftp_176.56.236.158_marshirov.tar.bz2.sh
   01 02 * * 3 /var/www/marshirov/data/sh/ftp_176.56.236.158_marshirov.tar.bz2.sh
   01 02 * * 6 /var/www/marshirov/data/sh/ftp_176.56.236.158_marshirov.tar.bz2.sh
   #0 01 * * 7  mysqldump -u"mar10000_hse" -p"marhse" --opt mar10000_hse > ~/data/db/mar10000_hse_7.sql
   #04 04 * * 7  cp -rf ~/data/db/*.* ~/data/db_past_week_all/
   #04 04 * * 1  ~/data/sh/ftp_yandex.sh
   #04 04 * * 4  ~/data/sh/ftp_162_253_64_30.sh
   #04 03 * * 4  ~/sh/cron_ftp.sh ~/marshirov.tar.bz2\
   #crontab_root
   #34 * * * * rm -f /var/mail/*
   #09 * * * *  cp -f /var/log/apache2/archive/*.* /var/log/apache2/
   #10 * * * * service apache2 restart
   #30 3 * * 3 cp /var/www/marshirov/marshirov.tar.bz2 ~/archive
   #30 3 * * 7 cp /var/www/marshirov/marshirov.tar.bz2 ~/archive
   #01 5 * * * /var/www/marshirov/data/sh/notroot.sh
   #:w /var/www/marshirov/data/sh/crontab_root.txt
   #* * * * * chmod 711 /var/www/t00/t00u*
   #12 * * * * /var/www/marshirov/data/nn2000.info/public_html/unix/skel/cp.sh
   #42 * * * * /var/www/marshirov/data/nn2000.info/public_html/unix/skel/cp.sh
   #01 5 * * * /var/www/marshirov/data/sh/notroot.sh
