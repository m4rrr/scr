#!/bin/bash
text="$1"
file_name="$2"
number_of_line="$3"
res=$(grep "$text" "$file_name" | head -"$number_of_lines" | cat -n | sort)
echo "$res"

