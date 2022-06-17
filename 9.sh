#!bin/bash
name="1.txt" 
text=$1 
echo "$name" 
echo "$text" 
if [ $name != $text ]; then 
 echo Ошибка: тест не пройден 
 exit 1 
else 
 echo Успех: тест пройден 
 echo $(( $RANDOM % 5 + 1 )) 
 exit 0 
fi
