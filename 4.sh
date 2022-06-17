#!bin/bash

NOW=$(date)

echo "write file name with space"

read -a array
for i in ${array[@]:0}
do
echo "$NOW" >>$i
done

echo "date ($NOW) was writing in the end of file"


