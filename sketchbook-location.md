1. Install and open [Flatseal](https://flathub.org/apps/cc.arduino.IDE2).
2. Navigate to `Arduino IDE v2`'s entry.

   ![The Arduino IDE v2 entry on Flatseal](https://i.imgur.com/Uda4TS6.png)

4. Scroll down to the `Filesystem` section, and change the `~/Arduino` folder under `Other files` to your preferred location.
   You can also add multiple directories if you want to open sketches in different folders.<br/>
   Defining paths using [XDG directories](https://docs.flatpak.org/en/latest/sandbox-permissions-reference.html#filesystem-permissions) is also supported (and recommended).<br/>
   As much as possible, append `:ro` to limit write access if you do not intend to modify sketches in that folder.
   
   ![The Other files entry on Flatseal](https://imgur.com/yeCmg4p.png)
   
5. Open Arduino, go to File > Preferences, and change the path on `Sketchbook location`.

   ![Sketchbook location settings on Arduino IDE](https://imgur.com/EHvws4Z.png)
