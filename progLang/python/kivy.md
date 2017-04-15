# Kivy Howto

## Android
#### Development Envionment Setup
* https://kivyspacegame.wordpress.com/2014/06/30/tutorial-how-to-build-python-for-android-with-ubuntu-and-buildozer/
```
$ sudo apt-get install python-pip
$ sudo apt-get install python2.7-dev
$ sudo pip install cython==0.20 # pip install --upgrade cython
$ sudo dpkg --add-architecture i386
$ sudo apt-get update
$ sudo apt-get install build-essential ccache git lib32z1 libncurses5:i386 libstdc++6:i386 python2.7 openjdk-7-jdk unzip zlib1g-dev zlib1g:i386
$ sudo apt-get install python-kivy
$ # run your hello world app to test :-)
$ sudo pip install git+https://github.com/kivy/plyer.git@master
$ sudo reboot; exit
$ buildozer init # in your project folder with main.py file, creates buildozer.spec
$ buildozer android debug deploy run
```
#### References
* http://kivy.org/docs/guide/packaging-android.html
* https://kivyspacegame.wordpress.com/2014/06/30/tutorial-how-to-build-python-for-android-with-ubuntu-and-buildozer/
* https://python-for-android.readthedocs.org/en/latest/examples/
* https://python-for-android.readthedocs.org/en/latest/prerequisites/
* create a device filter for the Android USB device using the VirtualBox OS settings
* sudo pip install Cython==0.17.1 or 0.20 until release 1.9 of Kivy

#### How to Package your Project
* https://python-for-android.readthedocs.org/en/latest/examples/

## Plyer
```
$ sudo pip install git+https://github.com/kivy/plyer.git@master
```


## Linux
* http://www.sysads.co.uk/2014/06/install-kivy-1-8-ubuntu-14-04/
* http://kivy.org/docs/installation/installation-linux.html

## Kivy General
#### Kivy Programming Guide
* http://kivy.org/docs/guide/basic.html
