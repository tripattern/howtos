# Oracle Sql Developer

## Download
* http://www.oracle.com/technetwork/developer-tools/sql-developer/downloads/index.html
  * Accept License Agreement
  * Other Platforms - requires JDK 8
  * Login to oracle: sys...
  * Unzip the downloaded zip file
## Setup
### Ubuntu
```
# First ensure you have setup a proper java 8 jdk with JAVA_HOME set
cd ~/software/sqldeveloper
vim sqldeveloper.sh
  # cd ...
  unset -v GNOM_DESKTOP_SESSION_ID
  cd /home/user/software/sqldeveloper/bin && bash sqldeveloper $*
chmod +x sqldeveloper.sh
sudo ln -s ~/software/sqldeveloper/sqldeveloper.sh /usr/local/bin/sqldeveloper
```

## References
* https://www.youtube.com/watch?v=dWnAizA1bYE&feature=youtu.be
* https://askubuntu.com/questions/916088/install-oracle-sql-developer
