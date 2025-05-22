#!/usr/bin/env bash
# cputemp.sh — outputs the package/core temp of an AMD CPU in °C

# Try reading from sensors; tweak the grep to your sensor-label if needed
# Common AMD labels: “Tdie”, “Tctl” or “Package id 0”
temp=$(sensors \
  | awk '/^(Tdie|Tctl|Package id 0):/ { sub(/°C$/,"",$2); printf "%d\n", $2; exit }' \
  || echo "N/A")

echo " ${temp%.*}°C"
