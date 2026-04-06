#!/bin/bash

# Opções do Menu
opcoes="󰤆 Desligar\n󰑐 Reiniciar\n󰤄 Suspender\n󰈆 Sair"

escolha=$(echo -e "$opcoes" | rofi -dmenu -i -p "Sistema:" -theme-str 'window {width: 15%;} listview {lines: 4;}')

case "$escolha" in
    *Desligar) poweroff ;;
    *Reiniciar) reboot ;;
    *Suspender) systemctl suspend ;;
    *Sair) i3-msg exit ;;
esac
