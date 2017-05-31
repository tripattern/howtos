## Download
* http://www.oracle.com/technetwork/database/features/instant-client/index-097480.html
* http://www.oracle.com/technetwork/topics/linuxx86-64soft-092277.html

## Install
* https://help.ubuntu.com/community/Oracle%20Instant%20Client

## Setup Notes
```
$ export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib/${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}
# Optional depends on situation - check install page
$ export ORACLE_HOME=/usr/lib/oracle/12.1/client64
$ export PATH=$PATH:$ORACLE_HOME/bin
$ sudo ln -s /usr/include/oracle/12.1/client64 $ORACLE_HOME/include
```
