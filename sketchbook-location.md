1. Install and open [Flatseal](https://flathub.org/apps/cc.arduino.IDE2).
2. Navigate to `Arduino IDE v2`'s entry.

   ![The Arduino IDE v2 entry on Flatseal](https://github.com/IverCoder/cc.arduino.IDE2/assets/92661164/61078b51-bafd-421d-ae6d-7dedf976bdec)

4. Scroll down to the `Filesystem` section, and change the `~/Arduino` folder under `Other files` to your preferred location.
   You can also add multiple directories if you want to open sketches in different folders.<br/>
   Defining paths using [XDG directories](https://docs.flatpak.org/en/latest/sandbox-permissions-reference.html#filesystem-permissions) is also supported (and recommended).<br/>
   As much as possible, append `:ro` to limit write access if you do not intend to modify sketches in that folder.
   
   ![The Other files entry on Flatseal](https://github.com/IverCoder/cc.arduino.IDE2/assets/92661164/15342b95-8db7-40f5-8338-faa7e3773a95)
   
5. Open Arduino, go to File > Preferences, and change the path on `Sketchbook location`.

   ![Sketchbook location settings on Arduino IDE](https://github.com/IverCoder/cc.arduino.IDE2/assets/92661164/a821d875-ac34-4a16-b98d-393fe6f076d8)
