## Linux
### Ubuntu 16.04 LTS
```
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install java-common oracle-java8-installer
sudo apt-get install oracle-java8-set-default
source /etc/profile
```

### Oracle Java 7
* Download latest Java 7 SDK from Oracle
$ sudo rm /usr/bin/java  
$ sudo ln -s /usr/lib/jvm/oracle_jdk8/bin/java /usr/bin/java  
$ sudo vim /etc/profile.d/oraclejdk.sh  
```
export IDEA_JDK=/usr/lib/jvm/oracle_jdk7
export J2SDKDIR=/usr/lib/jvm/oracle_jdk7
export J2REDIR=/usr/lib/jvm/oracle_jdk7/jre
export PATH=$PATH:/usr/lib/jvm/oracle_jdk7/bin:/usr/lib/jvm/oracle_jdk7/db/bin:/usr/lib/jvm/oracle_jdk7/jre/bin
export JAVA_HOME=/usr/lib/jvm/oracle_jdk7
export DERBY_HOME=/usr/lib/jvm/oracle_jdk7/db
```
### Oracle Java 8
* Download latest Java 8 SDK from Oracle
$ sudo rm /usr/bin/java  
$ sudo ln -s /usr/lib/jvm/oracle_jdk8/bin/java /usr/bin/java  
$ sudo vim /etc/profile.d/oraclejdk.sh  
```
# Java 8
export IDEA_JDK=/usr/lib/jvm/oracle_jdk8
#export J2SDKDIR=/usr/lib/jvm/oracle_jdk8
#export J2REDIR=/usr/lib/jvm/oracle_jdk8/jre
export PATH=$PATH:/usr/lib/jvm/oracle_jdk8/bin:/usr/lib/jvm/oracle_jdk8/db/bin:/usr/lib/jvm/oracle_jdk8/jre/bin
export JAVA_HOME=/usr/lib/jvm/oracle_jdk8
#export DERBY_HOME=/usr/lib/jvm/oracle_jdk8/db
```


## Mac OSX
/etc/launchd.conf
```
export PATH=$PATH:/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home/bin:/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home/db/bin:/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home/jre/bin
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home
```
