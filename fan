#!/bin/bash

# Configuração para o pino PC10 (Físico 18)
PINO=74
GPIO_PATH="/sys/class/gpio/gpio$PINO"

# Função para inicializar o pino
setup_gpio() {
    if [ ! -d "$GPIO_PATH" ]; then
        echo "$PINO" > /sys/class/gpio/export 2>/dev/null
        sleep 1
    fi
    echo "out" > "$GPIO_PATH/direction" 2>/dev/null
}

setup_gpio

echo "Monitorando temperatura no pino PC10 (GPIO $PINO)..."

while true; do
    # Média simplificada das zonas térmicas
    t0=$(cat /sys/class/thermal/thermal_zone0/temp 2>/dev/null || echo 0)
    t1=$(cat /sys/class/thermal/thermal_zone1/temp 2>/dev/null || echo 0)
    
    # Calcula a média e converte para Celsius
    temp_c=$(echo "scale=1; ($t0 + $t1) / 2000" | bc)

    if (( $(echo "$temp_c > 40" | bc -l) )); then
        echo 1 > "$GPIO_PATH/value"
        echo "Temp: $temp_c°C - Cooler LIGADO"
    else
        echo 0 > "$GPIO_PATH/value"
        echo "Temp: $temp_c°C - Cooler DESLIGADO"
        # Se estiver abaixo de 40, espera mais tempo (5 min como no seu original)
        sleep 295
    fi

    sleep 5
done