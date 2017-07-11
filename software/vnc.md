## Install
```
$ sudo apt-get install x11vnc
```
## Run
```
$ cat SHARE_SERVER
    ---
    x11vnc -nobell -clip 3840x2160+0+0 "$@"
    ---
$ cat SHARE_VIEW
    ---
    vncviewer :0 -noraiseonbeep -viewonly "$@"
    ---
```
