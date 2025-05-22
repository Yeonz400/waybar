#!/bin/bash

connected_devices=$(bluetoothctl devices Connected | awk '{print $2}')
names=()

for device in $connected_devices; do
  name=$(bluetoothctl info "$device" | awk -F': ' '/Name:/ {print $2}')
  
  # Extrai o nível da bateria (se existir)
  battery=$(bluetoothctl info "$device" | awk -F '[()]' '/Battery Percentage/{print $2}' | tr -d '%')
  
  # Combina nome + bateria (se detectada)
  if [ -n "$battery" ]; then
    names+=("$name $battery%")  # 󰁹 = ícone de bateria
  else
    names+=("$name")
  fi
done

if [ ${#names[@]} -eq 0 ]; then
  echo '{"text": "󰂲", "class": "disconnected"}'
else
  echo "{\"text\": \" $(IFS=' '; echo "${names[*]}")\", \"class\": \"connected\"}"
fi