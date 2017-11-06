# Scala & SBT Setup Howto
## Ubuntu 16.04 LTS
```
# Download the deb package from: https://downloads.lightbend.com/scala/2.12.4/scala-2.12.4.deb
dpkg -i scala-2.12.4.deb
sudo apt-get -f install

echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823
sudo apt-get update
sudo apt-get install sbt
```
