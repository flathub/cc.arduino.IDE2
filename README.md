# Arduino IDE 2.x Flatpak

Flatpak build of [Arduino IDE 2.x](https://github.com/arduino/arduino-ide).  <br />
Please report ALL issues for the IDE here (assuming you have installed the Flathub release).<br>
For more information see: https://github.com/flathub/cc.arduino.IDE2/issues/35.

To run the app you need USB permissions, preferably, the user has to be part of the
`dialout` group. Alternatively, add:
``` sh
KERNEL=="ttyUSB[0-9]*",MODE="0666"
KERNEL=="ttyACM[0-9]*",MODE="0666"
```
to `/etc/udev/rules.d/50-arduino.rules`.

## Running from console
If you are running the application from the console (you might need to do this to view the application's log while it is being used), run it using the `flatpak run` command:
``` sh
flatpak run cc.arduino.IDE2
```
Any arguments passed to the flatpak run command will be passed to the IDE i.e.
``` sh
flatpak run cc.arduino.IDE2 --log-level=warn
```
which only displays warning or above in the log output to the console.

## Adding permanent custom flags to the IDE
If you need to always start the IDE with custom arguments then the best way to do this is to use `flatpak override`.
For example:
``` sh
flatpak override --user --env=CUSTOM_IDE_FLAGS="--log-level=warn" cc.arduino.IDE2
```
This is also useful if you want to enable electron's (potentially experimental) wayland support:
``` sh
flatpak override --user --socket=wayland cc.arduino.IDE2
flatpak override --user --env=CUSTOM_IDE_FLAGS="--enable-features=UseOzonePlatform --ozone-platform=wayland" cc.arduino.IDE2
```
It is important to note that if you are experiencing issues with the IDE you MUST disable any custom flags you have before submitting a bug report here or on the IDE's bug tracker as this functionality is not officially supported.
