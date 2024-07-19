#!/usr/bin/bash

# Asegúrate de que la variable $1 tiene un valor
if [ -z "$1" ]; then
  echo "Error: Se requiere un número de escritorio como segundo argumento."
  exit 1
fi

# Verifica si xdotool está instalado
if ! command -v xdotool &> /dev/null; then
  echo "Error: xdotool no está instalado."
  exit 1
fi

# Configura la variable DISPLAY
export DISPLAY=:0

# Cambia al escritorio especificado
xdotool set_desktop "$1"

# Verifica si el comando anterior se ejecutó correctamente
if [ $? -ne 0 ]; then
  echo "Error: No se pudo cambiar al escritorio $1."
  exit 1
fi

echo "Cambio al escritorio $1 exitoso."

