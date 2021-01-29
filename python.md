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
* Setup virtual environment using pipenv
```
pip3 install pipenv
mkdir my_project
cd my_project
pipenv shell
pipenv install **package_name**
pipenv graph # tells you what packages are installed
# NOTE: commit the Pipfile cretaed in order to manage dependencies
```

* Setup virtual python dev environment - DON'T USE THIS AS BREAKS IF UPDATE SYSTEM PYTHON
```
sudo apt-get install -y python3-venv
cd ~
mkdir environments
cd environments
python3 -m venv my_project_env # isolated python project space
source my_project_env/bin/activate # activates space in the current terminal
deactivate # deactivates project space

python3 -mvenv --upgrade path/to/venv # if you need to upgrade
```
  * References
    * https://linoxide.com/linux-how-to/setup-python-virtual-environment-ubuntu/

## Using pipenv
```
pip3 install pipenv
mkdir my_project
cd my_project
pipenv shell # creates virtual environment for you
pipenv install **package_name**
pipenv install **package_name** --dev # developer package
pipenv uninstall **paackage name**
pipenv lock # creates the lock file
deactivate # closes the shell
```

## Using Pip
```
pip3 install -r requirements.txt
pip3 install scrapy==1.5 #package name and version

pip3 list

pip3 install --upgrade package_name
pip3 uninstall package_name
pipenv install --dev pytest
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
