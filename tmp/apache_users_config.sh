Переключаемся на суперпользователя
su
cd
cat > apache_users_config.sh
вставить фрагмент ниже ...
----------------------- 
#!/bin/bash

apt install tasksel
tasksel install lamp-server


echo ""
echo "Устанавливаем временной  пояс"  
rm /etc/localtime
ln -s /usr/share/zoneinfo/Europe/Moscow /etc/localtime

echo ""
echo ""
echo "Копируем и извлекаем конфигурационные файлы "  
rm -rf apache_users/
rm apache_users.bz2 
wget  http://ed.nn2000.info/public_html/unix/DO_Apache_Users/apache_users.bz2
ls -lAF
tar -xpf apache_users.bz2
cd apache_users
ls -lAF

echo ""
echo ""
echo "Создаем пользователей "  
chmod 755 ./UsersDb_add_del_g01.sh 
./UsersDb_add_del_g01.sh 
echo ""
echo "passwd:g01"  
echo ""
ls -lAF


echo ""
echo "Настраиваем сервер и открываем порты"  
cp apache2.conf.conf /etc/apache2/
cp charset.conf /etc/apache2/conf-enabled/
cp ports.conf /etc/apache2/
ls -lAF /etc/apache2/
cat /etc/apache2/ports.conf

echo ""
echo "Конфигурируем сервер  пользователей"  

cp  g01.conf  /etc/apache2/sites-enabled/
cat  /etc/apache2/sites-enabled/g01.conf 
a2ensite /etc/apache2/sites-enabled/g01.conf 
a2dissite /etc/apache2/sites-enabled/000-default.conf
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
ufw disable
ufw allow 22
ufw allow 21
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

echo ""  
echo "ftp"
apt install vsftpd
cp   vsftpd.conf /etc/
service vsftpd restart
echo ""  

echo "Проверить  браузером c своими IP-адресами..."  
echo "http://127.0.0.1:8001/cgi-bin/form_new.py"
echo "http://40.85.118.142:8005/cgi-bin/form_new.py"


---------------
Закрыть файл
Ctrl-D

===============
Проверить содержание файла
cat apache_users_config.sh

===============
Запустить файл на исполнение
bash ./apache_users_config.sh