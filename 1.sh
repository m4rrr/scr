!#/bin/bash
file_name="$1"
out_ext="$2"
echo "$file_name -> ${file_name%.*}.$out_ext"
mv "$file_name" "${file_name%.*}.$out_ext"
