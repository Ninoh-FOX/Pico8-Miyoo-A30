#!/bin/sh
export picodir=/mnt/SDCARD/App/pico
export HOME="$picodir"

export PATH="$HOME"/bin:$PATH
export LD_LIBRARY_PATH="$HOME"/lib:$LD_LIBRARY_PATH
export SDL_VIDEODRIVER=mali
export SDL_JOYSTICKDRIVER=a30

cd "$picodir"

sed -i 's|^transform_screen 0$|transform_screen 135|' "$HOME/.lexaloffle/pico-8/config.txt"

cpuclock performance 1 1000 384

pico8_dyn -width 640 -height 480 -draw_rect 0,0,480,640 -run "$1"
sync