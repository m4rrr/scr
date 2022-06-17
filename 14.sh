#!/bin/bash
if [ -z "$1" ]; then 
exit 
fi 
if [ $1 == "off" ]; then 
xrandr --output VGA-0 --off 
xrandr -s 0 else if [ $1 == "on"]; then 
xrandr --output LVDS --auto --primary --output VGA-0 --auto --left-of LVDS 
xrandr --newmode "1920x1080" 173.00 1920 2048 2248 2576 1080 1083 1088 1120 -hsync +vsync xrandr --addmode VGA-0 1920x1080 
xrandr --output VGA-0 --mode 1920x1080 
fi 
xrandr --dpi 96
