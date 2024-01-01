while true; do
	if bluetoothctl info 74:D7:13:7B:16:E4 | grep -q "Connected: no"; then
		pactl set-sink-mute @DEFAULT_SINK@ toggle
		notify-send bluetooth disconnected
	else
		pkill volume_mute.sh
	fi
	sleep 2 # Adjust the interval as needed
done
