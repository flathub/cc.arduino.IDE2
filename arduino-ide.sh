#!/bin/bash

if [[ $XDG_SESSION_TYPE == "wayland" ]] && [ -c /dev/nvidia0 ]
then
    CUSTOM_IDE_FLAGS="$CUSTOM_IDE_FLAGS --disable-gpu-sandbox"
fi

# Set the shared library paths
export LD_LIBRARY_PATH=/app/lib/:/usr/lib/:$LD_LIBRARY_PATH

# I cracked zypak's secrets
export ZYPAK_SPAWN_LATEST_ON_REEXEC=0
env TMPDIR=$XDG_CACHE_HOME zypak-wrapper /app/arduino-ide/arduino-ide $CUSTOM_IDE_FLAGS "$@"
