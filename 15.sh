#!/bin/bash

if [ "$1" = "help" ]; then
    #Проверяем если текст help, то выведем помощь
    echo "Использование:"
    echo "  $0 <text>"
    echo "text - текст запроса."
    echo "Если используется несколько слов, то заключить в кавычки"
    exit
fi

#Иначе продолжим программу
#Подготовим запрос
URL="https://go.mail.ru/search?q=$(echo $1 | sed 's/ /%20/g')"
#И параметры HTTP-заголовков для отправки
USERAGENT="Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101 Firefox/78.0"
ACCEPT="text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8"
ACCEPTLANG="ru,en-US;q=0.7,en;q=0.3"
ACCEPTENC="gzip, deflate, br"

#Выполняем запрос на сервер, получаем строку JSON с помощью grep и чистим некоторые ненужные символы с помощью sed. В сухом остатке остается просто структура JSON
RESULT=$(curl -sS -L -X "GET" -H "User-Agent: $USERAGENT" -H "Accept: $ACCEPT" -H "Accept-Language: $ACCEPTLANG" --data-urlencode "q=$1" $URL | grep 'go.dataJson = ' | sed 's/go\.dataJson =//' | sed 's/;$//')

#Перебираем массив с полученными с помощью утилиты jq, которая проходит по структуре и "выдергивает" необходимые поля
TITLE=$(echo $RESULT | jq -c -r '.serp.results[] | {number, title, url}')
#Возьмем поле title
TITLE=$(echo $TITLE | jq '.title')
#Немного уберем лишний тэг с помощью sed
TITLE=$(echo "$TITLE" | sed 's/<[\/]*b>//g')
#Выведем на экран
echo "$TITLE"
