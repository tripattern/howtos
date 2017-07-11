## Install
```
$ sudo apt-get install x11vnc
$ sudo apt-get install vncviewer
```

## Run
```
$ cat shareServer.sh
    ---
    #!/bin/bash
    # 0+0 means top left corner
    # share the top left screen
    # must put in the resolution of top left screen
    x11vnc -nobell -clip 1920x1200+0+0 "$@"
    ---
$ cat shareView.sh
    ---
    #!/bin/bash
    # client of screen server created
    # this is what you share as a screen in web apps...
    vncviewer :0 -noraiseonbeep -viewonly "$@"
    ---
```
