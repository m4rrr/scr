#!/bin/bash
read word
count=$(echo -n "$word" | wc -c)
echo "$count"
edge=""
sc=0
while [ "$sc" -lt "$count" ]
do
sc=$[ "$sc"+1 ]
ct="$sc"
edge="$edge$ct"
echo "$ct"
done
echo "$edge"
res="$edge$word$edge"
echo "Answer : $res"
