# Ruby

## Setup RVM
* https://github.com/rvm/ubuntu_rvm
* https://rvm.io/rvm/install

## Setup Ruby
* https://jekyllrb.com/docs/installation/

### Setup Ruby on Ubuntu
```
sudo apt-get install ruby ruby-dev build-essential
echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
echo 'export GEM_HOME=$HOME/gems' >> ~/.bashrc
echo 'export PATH=$HOME/gems/bin:$PATH' >> ~/.bashrc
source ~/.bashrc
```

## Jekyll
```
gem install jekyll bundler
```
* https://help.github.com/articles/setting-up-your-github-pages-site-locally-with-jekyll/
