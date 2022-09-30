#!/bin/bash

if [[ $XDG_SESSION_TYPE == "wayland" ]] && [ -c /dev/nvidia0 ]
then
    ELECTRON_FLAGS="$ELECTRON_FLAGS --disable-gpu-sandbox"
fi

# I cracked zypak's secrets
export ZYPAK_SPAWN_LATEST_ON_REEXEC=0
env TMPDIR=$XDG_CACHE_HOME zypak-wrapper /app/arduino-ide/arduino-ide /app/arduino-ide/resources/app/scripts/arduino-ide-electron-main.js $ELECTRON_FLAGS "$@"
