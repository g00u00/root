#!/bin/bash
user_pref="g03"
min=00
max=99

cmd="date";echo "\n"$cmd;$cmd

cmd="mkdir /var/www/"$user_pref;echo "\n"$cmd;$cmd
cmd="chmod 755 /var/www/"$user_pref;echo "\n"$cmd;$cmd

for((n_user=$min; n_user<=$max; n_user++))
do
    echo "\n"
    n_user_corr=$(printf "%02d" $n_user)
#    n_user_corr=$(printf '%4s'$n_user)
#    echo $n_user_corr
    user_name=$user_pref"u"$n_user_corr;echo $user_name
    
    cmd="userdel -rf "$user_name;     echo $cmd;    $cmd
    EncryptedPassword=$(openssl passwd -crypt g549)
    cmd="useradd -m -s /bin/bash -k folder -g "www-data" -d /var/www/"$user_pref"/"$user_name" -p "$EncryptedPassword" "$user_name;
    echo $cmd;$cmd
	cmd="setquota -u "$user_name" 15000 16000 0 0 /"
	echo $cmd;$cmd
    

    
#    cmd="useradd -m -s /bin/bash -k /var/www/marshirov/data/nn2000.info/public_html/unix/skel_min/folder -g "$user_pref" -d /var/www/"$user_pref"/"$user_name" "$user_name;    echo $cmd;    $cmd
#   cmd="usermod -L "$user_name    
#   echo $cmd
#    $cmd
#   cmd="usermod -U "$user_name    
#    echo $cmd
#    $cmd

    cmd="chmod 711 /var/www/"$user_pref;echo $cmd;$cmd

    cmd="chgrp root /var/www/"$user_pref"/"$user_name;echo $cmd;$cmd
    cmd="chown root /var/www/"$user_pref"/"$user_name;echo $cmd;$cmd
#    cmd="chmod 1755 /var/www/"$user_pref"/"$user_name;echo $cmd;$cmd
#    cmd="chmod 711 /var/www/"$user_pref"/"$user_name"/*";echo $cmd;$cmd
    cmd="chmod 755 /var/www/"$user_pref"/"$user_name"/*";echo $cmd;$cmd
    cmd="chmod 777 /var/www/"$user_pref"/"$user_name"/tmp";echo $cmd;$cmd
    cmd="chgrp root /var/www/"$user_pref"/"$user_name"/.htaccess";echo $cmd;$cmd
    cmd="chown root /var/www/"$user_pref"/"$user_name"/.htaccess";echo $cmd;$cmd
    cmd="ls -laF /var/www/"$user_pref"/"$user_name"/";echo $cmd;$cmd

#/*=================================
#Удаление всей файлов в разделе пользовател и добавление новых конфигурационных 
<<COMMENT
    cmd="rm -rf /var/www/"$user_pref"/"$user_name"/*.*"
    echo $cmd
    $cmd
     cmd="rm -rf /var/www/"$user_pref"/"$user_name"/*"
    echo $cmd
    $cmd
     cmd="rm -rf /var/www/"$user_pref"/"$user_name"/.*[^.:]"
    echo $cmd
    $cmd
    cmd="cp /var/www/marshirov/data/nn2000.info/public_html/00_unix/skel_min/folder/.*[^.:] /var/www/"$user_pref"/"$user_name
    echo $cmd
    $cmd

COMMENT
<<COMMENT
    cmd="chgrp $user_pref /var/www/"$user_pref"/"$user_name"/.*[^.:]"
    echo $cmd
    $cmd
    cmd="chown $user_name /var/www/"$user_pref"/"$user_name"/.*[^.:]"
    echo $cmd
    $cmd
    cmd="chmod 1755 /var/www/"$user_pref"/"$user_name
    echo $cmd
    $cmd
    cmd="chgrp root /var/www/"$user_pref"/"$user_name"/.htaccess"
    echo $cmd
    $cmd
    cmd="chown root /var/www/"$user_pref"/"$user_name"/.htaccess"
    echo $cmd
    $cmd
    cmd="chmod 1644 /var/www/"$user_pref"/"$user_name"/.htaccess"
    echo $cmd
    $cmd
    
    cmd="ls -la /var/www/"$user_pref"/"$user_name"/"
    echo $cmd
    $cmd
    
COMMENT
#*/============================


mysql -uroot -peHc4C37L -e "SELECT now();
DROP DATABASE IF EXISTS $user_name; 
CREATE DATABASE IF NOT EXISTS $user_name  DEFAULT CHARACTER SET = utf8    DEFAULT COLLATE = utf8_general_ci; 
#SHOW DATABASES;
#DROP USER $user_name@localhost;
CREATE USER  $user_name@localhost IDENTIFIED BY 'mysql16';
GRANT ALL ON $user_name.* TO $user_name@localhost;
SELECT user,host,password FROM mysql.user GROUP BY user;
"

done
#Завершение большого цикла
#========================
# $cmd > cmd.txt - значение переменной пишем в файл, считываем все записи 
<<COMMENT
printf "\nДата и последняя команда в цикле\t">> cmd.txt
date >> cmd.txt; 
$cmd >> cmd.txt
#filename="$1"
filename="cmd.txt"
while read -r line
do
    name=$line
    echo "$name"
done < "$filename"
COMMENT
#=======================

exit 0
