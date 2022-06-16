#! / bin / bash
minimo=100
brightness=$(cat /sys/class/backlight/intel_backlight/brightness)
brightness=$(expr $brightness - 300)
if [[ $brightness < 0 ]];then
        echo $minimo > /sys/class/backlight/intel_backlight/brightness
else
	echo $brightness > /sys/class/backlight/intel_backlight/brightness
fi
