#!bin/bash
cd $1
echo -e "Каталоги:\n$(ls -l |grep ^d)"
echo -e "ОБычные файлы:\n$(ls -l |grep ^-)"
echo -e "Символьные ссылки:\n$(ls -l |grep ^l)"
echo -e "Символьные устройства:\n$(ls -l |grep ^c)"
echo -e "Блочные устройства:\n$(ls -l |grep ^b)"
