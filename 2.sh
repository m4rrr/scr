file="$1"
stat "$file" | grep "Modify\|Change\|Birth"
