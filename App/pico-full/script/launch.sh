#!/bin/sh
export picodir=/mnt/SDCARD/App/pico
export HOME="$picodir"

export PATH="$HOME"/bin:$PATH
export LD_LIBRARY_PATH="$HOME"/lib:$LD_LIBRARY_PATH
export SDL_VIDEODRIVER=a30
export SDL_JOYSTICKDRIVER=a30

cd "$picodir"

sed -i 's|^transform_screen 135$|transform_screen 0|' "$HOME/.lexaloffle/pico-8/config.txt"

cpuclock performance 1 1000 384

pico8_dyn -splore -width 640 -height 480 -root_path "/mnt/SDCARD/Roms/PICO/" &> ./log.txt
sync

cp /mnt/SDCARD/App/pico/.lexaloffle/pico-8/bbs/carts/*.p8.png /mnt/SDCARD/Roms/PICO/
sync
