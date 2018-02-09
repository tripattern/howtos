# Travis CI

## Local Client
* Install local client
```
curl -sSL https://get.rvm.io -o rvm.sh
cat rvm.sh | bash -s stable
source ~/.rvm/scripts/rvm
rvm install ruby --2.1 # --default
gem install travis
```
* Log In
```
travis login
travis login --pro
```
## Created Encrypted Key or File
```
travis encrypt <number u want to encrypt>
```
