# Proc
* All running process i nlinux can be found under this directory /proc

## Helpful commands

```
cd /proc
ls | grep '[0-9]' # list the process by their ID
ls | grep '[0-9]' | wc -l# This will count how many running process there are
echo $$ # shows ID of your current terminal
```
