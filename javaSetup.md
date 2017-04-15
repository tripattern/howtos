## Linux
$ rm /usr/bin/java  
$ sudo ln -s /usr/lib/jvm/oracle_jdk8/bin/java /usr/bin/java  
$ vim /etc/profile.d/oraclejdk.sh  
```
export J2SDKDIR=/usr/lib/jvm/oracle_jdk7
export J2REDIR=/usr/lib/jvm/oracle_jdk7/jre
export PATH=$PATH:/usr/lib/jvm/oracle_jdk7/bin:/usr/lib/jvm/oracle_jdk7/db/bin:/usr/lib/jvm/oracle_jdk7/jre/bin
export JAVA_HOME=/usr/lib/jvm/oracle_jdk7
export DERBY_HOME=/usr/lib/jvm/oracle_jdk7/db
```

## Mac OSX
/etc/launchd.conf
```
export PATH=$PATH:/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home/bin:/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home/db/bin:/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home/jre/bin
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home
export DERBY_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home/db
```
