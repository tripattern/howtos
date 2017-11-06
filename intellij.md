# Jetbrains IDEA Howto

# Update IntelliJ launcher on Ubuntu
* Edit ~/.local/share/applications/jetbrains-idea.desktop
```
Icon=jetbrains-idea.png
Path=~/software/idea-IU-162.2032.8/bin
```
* Reboot or login / logout

## Howto setup karma tests
* Install plugin called "Karma"
* Go to...
 * Run
  * Edit Configurations
   * Edit the Karma configurations
    * Configuration file - karma.conf.js
    * Node interpreter - /usr/local/bin/node
    * Karma package - the karma folder in your node_modules directory
