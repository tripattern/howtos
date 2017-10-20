## ALEX VARIABLES AND ALIASES

export PATH="~/.local/bin:${PATH}"

export VISUAL=/usr/bin/vim
export EDITOR="$VISUAL"

# export ANDROID_HOME=/home/alexanderb/Android/Sdk
# export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

# export GRADLE_HOME=/opt/gradle/gradle-3.4.1
# export PATH=${PATH}:$GRADLE_HOME/bin

alias mci='mvn clean install'
alias mcis='mvn clean install -DskipITs=false'
alias mcisTrue='mvn clean install -DskipITs=true'
alias mvnpdf='mvn clean install -Pdocgen-pdf'
alias mvnlatex='mvn clean install -PlatexProfil clean process-resources latex:latex'
alias mvnlatexo='mvn clean install -PlatexProfil clean process-resources latex:latex -o'
alias mvndebug='mvn clean install -Pdebugger'
alias mvndep='mvn clean install -Pserver-package-deploy'

alias l='ls -alh'
alias v='vim'
alias h='cd ~'
alias c='cd ~/code'
alias d='cd ~/Downloads'
alias s='cd ~/software'
alias n='nautilus .'
alias g='gedit'

alias gpr='git pull --rebase'
alias gr='git reset --hard HEAD'
alias gs='git status'
alias gaa='git add -A'
alias gcm='git commit -m'
alias gp='git push'
alias gsr='git svn rebase'

export LD_LIBRARY_PATH=/usr/lib/oracle/12.2/client64/lib/${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}
