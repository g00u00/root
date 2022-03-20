#!/bin/bash
echo ""
echo "Копируем и извлекаем конфигурационные файлы "
rm -rf new_users.bz2 new_users
wget  http://198.211.123.137/do_users/new_users.bz2
ls -lAF
tar -xpf new_users.bz2
ls -lAF
echo "http://127.0.0.1:8001/cgi-bin/form_new.py"
echo "http://40.85.118.142:8005/cgi-bin/form_new.py"
