#! /usr/bin/fish
# Obviously change the directory structure to fit your setup
set -x J2SDKDIR /usr/lib/jvm/oracle_jdk7
set -x J2REDIR /usr/lib/jvm/oracle_jdk7/jre
# set -x PATH $PATH /usr/lib/jvm/oracle_jdk7/bin:/usr/lib/jvm/oracle_jdk7/db/bin:/usr/lib/jvm/oracle_jdk7/jre/bin
# If you have other java paths in your PATH variable you will need to completely overwrite the existing PATH instead of appending to it...
set -x -g PATH /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin /usr/games /usr/local/games /usr/lib/jvm/oracle_jdk7/bin /usr/lib/jvm/oracle_jdk7/db/bin /usr/lib/jvm/oracle_jdk7/jre/bin
set -x JAVA_HOME /usr/lib/jvm/oracle_jdk7
