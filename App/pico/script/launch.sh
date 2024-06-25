#!/bin/sh
export picodir=/mnt/SDCARD/App/pico
export HOME="$picodir"

export PATH="$HOME"/bin:$PATH
export LD_LIBRARY_PATH="$HOME"/lib:$LD_LIBRARY_PATH
export SDL_VIDEODRIVER=mali
export SDL_JOYSTICKDRIVER=a30

cd "$picodir"

cpuclock performance 1 1000 384

pico8_dyn -splore -width 640 -height 480 -root_path "/mnt/SDCARD/Roms/PICO/" &> ./log.txt
sync
