## Install
```
$ sudo apt-get install x11vnc
```
## Run
```
$ cat shareServer.sh
    ---
    #!/bin/bash
    # 0+0 means top left corner
    # share the top left screen
    # must put in the resolution of top left screen
    x11vnc -nobell -clip 3840x2160+0+0 "$@"
    ---
$ cat shareView.sh
    ---
    #!/bin/bash
    # creates the screen to share
    vncviewer :0 -noraiseonbeep -viewonly "$@"
    ---
```
