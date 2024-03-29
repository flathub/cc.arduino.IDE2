1. Install [Flatseal from Flathub](https://flathub.org/apps/com.github.tchx84.Flatseal).

2. Open `Arduino IDE V2`'s entry on Flatseal. Under the `Filesystem access` section , disable the `All user files` toggle and scroll down to the `Other files` setting. Add the directory/directories where you want to access sketches from.<br/>
   [XDG directories](https://docs.flatpak.org/en/latest/sandbox-permissions-reference.html#filesystem-permissions) are supported (and recommended).
   If possible, append `:ro` to keep access to sketch directories you don't intend to modify read-only.
   
   ![Filesystem options](https://imgur.com/BSI46Lj.png)

4. Add `.arduinoIDE` and `.arduino15` to the `Persistent` section.
   
   ![Persistent options](https://imgur.com/S7jR238.png)

5. (Optional) Move the `~/.arduinoIDE` and `~/arduino15` folders to `~/.var/app/cc.arduino.IDE2`.

6. Change the Sketchbook location at File > Preferences.

   ![Sketchbook location option](https://imgur.com/g66a8MQ.png)
