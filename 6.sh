#!/bin/bash
pass="$1"
find $pass -regextype posix-extended -regex '.{2,}' | sort | tee 1.txt
