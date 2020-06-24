# Setup Java

## Linux

### Oracle Java 8
* Download latest Java 8 SDK from Oracle
$ sudo rm /usr/bin/java  
$ sudo ln -s /usr/lib/jvm/oracle_jdk8/bin/java /usr/bin/java  
$ sudo vim /etc/profile.d/oraclejdk.sh  
```
# Java 8
export PATH=$PATH:/usr/lib/jvm/oracle_jdk8/bin:/usr/lib/jvm/oracle_jdk8/db/bin:/usr/lib/jvm/oracle_jdk8/jre/bin
export JAVA_HOME=/usr/lib/jvm/oracle_jdk8
```


## Mac OSX
### Oracle Java 8
/etc/launchd.conf
```
export PATH=$PATH:/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home/bin:/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home/db/bin:/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home/jre/bin
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home
```
