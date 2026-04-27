#!/bin/bash

# выбираем пиксель
color=$(grim -g "$(slurp -p)" -t ppm - | magick - -format '%[hex:p{0,0}]' info:)

# добавляем #
color="#$color"

# копируем в буфер
echo -n "$color" | wl-copy

# уведомление
notify-send "Цвет выбран" "$color"
