# scr
7-8 повторки
16 работает только если вписать команды
14 работает с косяком
7-8-9 работают очень странно
6 нужно после скрипта написать директорию любую /home

1. Устанавливаем туттер и корл
sudo apt-get install curl
sudo wget http://www.floodgap.com/software/ttytter/ttytter.txt -O /usr/bin/ttytter
даем права
sudo chmod +x /usr/bin/ttytter
Для запуска консольного twitter-клиента набираем:
# ttytter -user=логин:пароль

2. Скрипт. закидываем куда нибудь
даем права
chmod 755 z16.sh
исправляем возможную ошибку с интерпретатором
sed -i -e 's/\r$//' /16v2.sh
