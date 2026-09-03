#!/bin/bash

# Check if Bluetooth is on
if bluetoothctl show | grep -q "Powered: yes"; then
    # Check if any device is connected
    connected_devices=$(bluetoothctl devices Connected | awk '{print $3}')
    
    if [ -z "$connected_devices" ]; then
        echo "Off"
    else
        # Display first connected device (you can modify this to show all)
        device_name=$(bluetoothctl info $(bluetoothctl devices Connected | awk '{print $2}' | head -n1) | grep "Name:" | cut -d' ' -f2-)
        echo "$device_name"
    fi
else
    echo "Off"
fi