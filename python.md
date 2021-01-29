# Python

## Setup Python Dev Environment
* Install Python
```
# Installing Python
sudo apt-get update && sudo apt get upgrade
sudo apt install python3
sudo apt upgrade python3
sudo apt update && sudo apt install python3-pip
python3 -m pip install --user --upgrade pip
sudo apt-get install build-essential libssl-dev libffi-dev python-dev
```
* Setup virtual python dev environment
```
 sudo apt-get install -y python3-venv
```
* References
  * https://linoxide.com/linux-how-to/setup-python-virtual-environment-ubuntu/

## Using Pip
```
pip3 install -r requirements.txt
pip3 install scrapy==1.5 #package name and version

pip3 list

pip3 install --upgrade package_name
pip3 uninstall package_name
```

## Setup virtualenv
```
sudo apt install -y python3-venv # or pip install virtualenv
mkdir testDir
cd testDir
python3 -m venv env1
source env1/bin/activate
python -m pip module_name # to install things specific for this venv
python -m pip freeze > requirements.txt
python -m pip install -r requirements.txt # if you have a requirements file...
python program_name.py # python will be the venv python
deactivate
```

## Troubleshooting
* Module can't be found even though its seems to be installed (in pip freeze etc.)
```
/home/user/.virtualenvs/scripts/bin/python -m pip install module_name
```
