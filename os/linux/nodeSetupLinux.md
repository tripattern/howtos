## Install node.js and npm
```
$ sudo apt-get update
$ sudo apt-get upgrade
$ sudo apt-get install nodejs npm
```

## Upgrade node.js and npm
* Note this automatically pulls the version you want from the internet
```
sudo npm cache clean -f
sudo npm install -g n
sudo n stable
sudo n 4.2.1 # if you want to use a specific version
sudo ln -sf /usr/local/n/versions/node/<VERSION>/bin/node /usr/bin/node 
```
