threshold=20

while true; do
	battery_percent=$(acpi -b | awk '{print $4}' | tr -d '%,')

	if [ "$battery_percent" -lt "$threshold" ]; then
		notify-send "Hey!!! Watch out" "Battery is at $battery_percent%. Please connect your charger."
	fi
	sleep 300
done
