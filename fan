#!/bin/bash

gpio mode 16 out

while true; do
  # Método com /sys/class/thermal
  temp=$(cat /sys/class/thermal/thermal_zone0/temp)
  temp_c=$(echo "scale=1; $temp / 1000" | bc)

  # Comparação com 40°C
  if awk "BEGIN {exit !($temp_c > 40)}"; then
    gpio write 16 1 # Liga o GPIO 16
    echo "Temperatura: $temp_c°C - GPIO 16 ligado"
  else
    gpio write 16 0 # Desliga o GPIO 16
    echo "Temperatura: $temp_c°C - GPIO 16 desligado"
    sleep 295
  fi

  # Atraso de 5 segundos
  sleep 5
done