#!/bin/bash
max=&(cat /sys/class/backlight/intel_backlight/max_brightness)
brillo=$(cat /sys/class/backlight/intel_backlight/brightness)
brillo=$(expr $brillo + 300)
if [[ $brillo < $max ]];then
	echo $max>/sys/class/backlight/intel_backlight/brightness
else
	echo $brillo>/sys/class/backlight/intel_backlight/brightness
fi
