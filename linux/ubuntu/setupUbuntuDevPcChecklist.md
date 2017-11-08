# Setup Ubuntu Development Environment

### Software List
* Change /bin/sh to point to /bin/bash
```
sudo cp /bin/sh /bin/sh.original
sudo rm -rf /bin/sh
sudo ln -s /bin/bash /bin/sh

```
* SSH and scripts
* /etc/hosts
* Git
  * Git auth details
* Oracle Java JDK 8
* Maven
* IntelliJ
* Chrome
* Hipchat
* Slack
* Oracle SQL Developers
* Docking Station
* Numix design
  * https://itsfoss.com/install-numix-ubuntu/
* Gnome zoom tool
* openconnect
* Add /etc specific files to git that you edited by hand
  * First commit the original then commit your changes
