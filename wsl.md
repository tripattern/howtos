# Windows Sub-system Linux

## Install
* Don't use choco... install from store
* In search look for ubuntu and run as administrator
  * You will beasked to enter admin user
## Configure
```
wslconfig /l # distribution that has been setup
wslconfig /u Ubuntu-... # name of the distribution shown above
ubuntu config --default-user new_user_name # do this to change the default user
```

## Setup VSCode with WSL
* https://code.visualstudio.com/docs/remote/wsl
