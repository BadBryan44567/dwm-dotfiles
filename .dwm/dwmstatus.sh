#!/bin/bash
while true; do
	xsetroot -name "VOL: $(pactl list sinks | grep '^[[:space:]]Volume:' | head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,') % | $( date +"%F %R" ) "
done
