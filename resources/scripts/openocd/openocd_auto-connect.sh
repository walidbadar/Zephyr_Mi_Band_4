#!/bin/bash

# Use default if no argument is passed
if [ $# -lt 1 ]; then
    TARGET_CFG="renesas_smartbond.cfg"
    echo "No target config provided, defaulting to '$TARGET_CFG'"
    echo
else
    TARGET_CFG="$1"
fi

echo "Using target config: $TARGET_CFG"

while true; do
    sudo openocd -f rpi-swd.cfg -f "$TARGET_CFG"
    echo "Trying to connect..."
    sleep 1
done
