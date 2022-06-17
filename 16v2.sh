#!/bin/bash

HOST=`hostname -s`
UP=`uptime | cut -d" " -f4,5 | cut -d"," -f1`
LOAD=`uptime | cut -d":" -f5,6`
MEM=`ps aux | awk '{ sum += $4 }; END { print sum }'`
CPU=`ps aux | awk '{ sum += $3 }; END { print sum }'`

tweet="Host: ${HOST}, uptime: ${UP}, cpu: ${CPU}%, memory: ${MEM}%, loadavg ${LOAD}"

if [ $(echo "${tweet}" | wc -c) -gt 140 ]; then
    echo "FATAL: The tweet is longer than 140 characters!"
    exit 1
fi

echo $tweet | ttytter -script