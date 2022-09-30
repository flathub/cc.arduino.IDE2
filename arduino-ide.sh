#!/bin/bash

FLAGS=''

if [[ $XDG_SESSION_TYPE == "wayland" ]]; then
    if [ -c /dev/nvidia0 ]; then
        FLAGS="$FLAGS --disable-gpu-sandbox"
    elif [ -S "$XDG_RUNTIME_DIR/$WAYLAND_DISPLAY" ]; then
        FLAGS="$FLAGS --enable-features=UseOzonePlatform --ozone-platform=wayland"
    fi
fi

# I cracked zypak's secrets
export ZYPAK_SPAWN_LATEST_ON_REEXEC=0
env TMPDIR=$XDG_CACHE_HOME zypak-wrapper /app/arduino-ide/arduino-ide /app/arduino-ide/resources/app/scripts/arduino-ide-electron-main.js $FLAGS "$@"
