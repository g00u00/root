#!/bin/bash

apt-get update

apt install tasksel
tasksel install lamp-server

apt install net-tools
apt install python3-pip
pip3 install pymysql
pip3 install numpy
pip3 install matplotlib

echo ""
echo "Устанавливаем временной  пояс"
rm /etc/localtime
ln -s /usr/share/zoneinfo/Europe/Moscow /etc/localtime

echo ""
echo "ftp"
apt install vsftpd
cp   apache_users/vsftpd.conf /etc/
service vsftpd restart
echo ""

ls -lAF

echo ""
echo ""
echo "Создаем пользователей "
cd apache_users
chmod 755 ./UsersDb_add_del_g01.sh
./UsersDb_add_del_g01.sh
cd ~
echo ""
echo "passwd:g01"
echo ""
ls -lAF

echo ""
echo "Настраиваем сервер и открываем порты"
systemctl stop apache2
cp apache_users/apache2.conf /etc/apache2/
cp apache_users/charset.conf /etc/apache2/conf-enabled/
cp apache_users/ports.conf /etc/apache2/
cat /etc/apache2/ports.conf
ls -lAF /etc/apache2/
echo "Добавляем  пользователей"
cp  apache_users/g01.conf /etc/apache2/sites-enabled/
cat  /etc/apache2/sites-enabled/g01.conf
a2ensite /etc/apache2/sites-enabled/g01.conf
a2dissite /etc/apache2/sites-enabled/000-default.conf
echo "Your choices are:"
echo "Which site(s) do you want to disable (wildcards ok)?"
echo "000-default"
a2dissite
echo ""
echo "Разрешаем CGI -скрипты"
a2enmod cgi


echo ""  
echo "!!!Azure"  
echo "Azure - Сетевые подключения - Открыть порты: 8001-8005 "  
echo "Проверить  браузером  c своими IP-адресами..."
echo "http://40.85.118.142"
echo "http://127.0.0.1:8001"
echo "http://40.85.118.142:8005"


apt install ufw
ufw disable
ufw allow 21
ufw allow 22
ufw allow 80
ufw allow 8000
ufw allow 8001
ufw allow 8002
ufw allow 8003
ufw allow 8004
ufw allow 8005
ufw enable
ufw status verbose
echo ""
echo "Рестартуем http-сервер"
systemctl restart apache2

echo "Проверить  браузером c своими IP-адресами..."
echo "http://127.0.0.1:8001/cgi-bin/form_new.py"
