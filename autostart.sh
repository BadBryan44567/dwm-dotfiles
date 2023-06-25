status() {
	echo -n "VOL: $(pactl list sinks | grep '^[[:space:]]Volume:' | head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,') % | BAT: $(acpi | grep "Battery 0" | awk '{print $4}' | sed s/,//) | $(date '+%d-%m-%Y %R')"
	 "VOL: $(pactl list sinks | grep '^[[:space:]]Volume:' | head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,')%v"

}

while :; do

	xsetroot -name "$(status)"

done &
picom &
flameshot &
feh --bg-fill ~/Pictures/Wallpapers/lunar-lobster-night-16-bit.png &
nm-applet
