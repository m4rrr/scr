#!/bin/bash
pass="$1"
find $pass -name "??*" | sort | tee 1.txt
