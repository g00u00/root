#### Настройка Virtual Box и др.
https://github.com/g00u00/root/blob/main/ReadMe_Files_VirtualBox/

###Конфигурирование сервера

sudo passwd root

su

cd

ls -lAF

 rm -rf name  - при необходимости

git clone https://github.com/g00u00/root.git /root

bash apache_users_config.sh

###При необходимости создаем дополнительные аккаунты g02-g07

cd do_users

bash UsersDb_add_del_g06.sh




###На сервера создаются аккаунты:

логин пароль IP:порт

g00u00 g00u00 - используется при начальном конфигурировании, но не всегда

root root

g01u00 g01  127.0.0.1:80

g01u00 g01  127.0.0.1:8000

g01u01 g01  127.0.0.1:8001

g01u02 g01  127.0.0.1:8002

g01u03 g01  127.0.0.1:8003

g01u04 g01  127.0.0.1:8004

g01u05 g01  127.0.0.1:8005




