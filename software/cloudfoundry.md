# Cloud Foundry Howto

## Install CF Client
* Ubuntu / Debian
```
wget -q -O - https://packages.cloudfoundry.org/debian/cli.cloudfoundry.org.key | sudo apt-key add -
echo "deb http://packages.cloudfoundry.org/debian stable main" | sudo tee /etc/apt/sources.list.d/cloudfoundry-cli.list
sudo apt-get update
sudo apt-get install cf-cli
```

## Install PCF DEV
* Install Virtualbox
* Download the latest version
  * https://network.pivotal.io/products/pcfdev
```
unzip pcfdev-VERSION-linux.zip
./pcfdev-VERSION-linux
cf dev start
```
* Enter Username and Password
* When all apps are up and running take a snapshot of the vm 

## Usage
```
cf dev start
cf dev stop
cf dev destroy # destroys the created vm
```

## Install Sample App
```
git clone https://github.com/cloudfoundry-samples/spring-music
cd ./spring-music
cf login -a api.local.pcfdev.io --skip-ssl-validation
```



## References
* https://stackoverflow.com/questions/36596743/how-to-install-cloudfoundry-on-local-server
* https://pivotal.io/platform/pcf-tutorials/getting-started-with-pivotal-cloud-foundry-dev/introduction
* https://github.com/pivotal-cf/pcfdev
