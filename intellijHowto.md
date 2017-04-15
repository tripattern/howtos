# intellij Howto's

## Upgrade on linux
* Download newest version
* Unzip&Untar it
* Navigate to the bin folder and run .idea.sh from the command line
* Import settings from previous version
* Close intellij
* Move or delete old intellij software folder
* Delete hidden folder in your home directory starting with .IntelliJ<IDEA VERSION>
* Edit the following file:
 * sudo vim /usr/share/applications/jetbrains-idea.desktop
```
[Desktop Entry]
Version=1.0
Type=Application
Name=IntelliJ IDEA
Icon=/home/alexanderb/software/idea-IU-143.1821.5/bin/idea.png # EDIT THIS LINE!!!
Exec="/home/alexanderb/software/idea-IU-143.1821.5/bin/idea.sh" %f # EDIT THIS LINE!!!
Comment=Develop with pleasure!
Categories=Development;IDE;
Terminal=false
StartupWMClass=jetbrains-idea
```
