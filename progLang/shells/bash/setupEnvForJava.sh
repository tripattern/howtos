#!/bin/bash
# Obviously change the directory structure to your environment
export J2SDKDIR=/usr/lib/jvm/oracle_jdk7
export J2REDIR=/usr/lib/jvm/oracle_jdk7/jre
# If you have other java paths in your PATH variable you will need to completely overwrite the existing PATH instead of appending to it...
#export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/lib/jvm/oracle_jdk7/bin:/usr/lib/jvm/oracle_jdk7/db/bin:/usr/lib/jvm/oracle_jdk7/jre/bin
export PATH=/home/alexanderb/.sdkman/candidates/grails/current/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/lib/jvm/oracle_jdk7/bin:/usr/lib/jvm/oracle_jdk7/db/bin:/usr/lib/jvm/oracle_jdk7/jre/bin
#export PATH=$PATH:/usr/lib/jvm/oracle_jdk7/bin:/usr/lib/jvm/oracle_jdk7/db/bin:/usr/lib/jvm/oracle_jdk7/jre/bin
export JAVA_HOME=/usr/lib/jvm/oracle_jdk7
