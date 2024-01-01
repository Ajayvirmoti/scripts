bluetoothctl power on
if bluetoothctl connect [74:D7:13:7B:16:E4 Add of buds/bluetooth device] | grep -q "successful"; then
	notify-send "Bluetooth" ". . : :  Air 3s Connected  : : . ."
	notify-send "disconnect deamon executed"
	$HOME/scripts/volume_mute.sh
else
	notify-send "Connection Refused"
fi
