#!/bin/bash

# Get info for Battery 0
bat0_info=$(acpi -b | grep 'Battery 0')
bat0_status=$(echo "$bat0_info" | grep -oP '(Charging|Discharging|Full|Not Charging)')
bat0_percent=$(echo "$bat0_info" | grep -oP '\d+%' | tr -d '%')

# Display logic for Battery 0 with Nerd Font characters
if [[ "$bat0_status" == "Charging" ]]; then
    echo " Charging: $bat0_percent%"  # Charging icon ()
elif [[ "$bat0_status" == "Discharging" ]]; then
    echo " Discharging: $bat0_percent%"  # Battery icon ()
elif [[ "$bat0_status" == "Full" ]]; then
    echo " Battery Full"  # Full battery icon ()
elif [[ "$bat0_status" == "Not Charging" ]]; then
    echo " Battery: $bat0_percent% (Not charging)"  # Empty battery icon ()
else
    echo " Battery: $bat0_percent%"  # fallback with default battery icon ()
fi
