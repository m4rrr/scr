#!/bin/bash
while true;
    do
    xinput test 9 | read
    scrot $(date +%F-%H-%M-%S).png
done
