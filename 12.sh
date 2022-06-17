!#/bin/bash
user=$(whoami)
user_dir="$HOME"
count=$(echo -n "user$user_dir" | wc -c)
res="$user $user_dir $count"
echo "$res"
