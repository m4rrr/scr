#!bin/bash
count=0
until [ $count  -eq $1 ]
do
(( count++ ))
sleep 1 &
echo $count
wait
done
