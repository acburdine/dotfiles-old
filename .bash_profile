# Custom PATH overrides
export PATH=/usr/local/bin:/usr/local/sbin:$PATH:/Users/acburdine/bin:/Users/acburdine/.composer/vendor/bin

# Custom Shell Command setup
export NVM_DIR="/Users/acburdine/.nvm"
[[ -s "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh"  # This loads nvm

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Use VIM as default editor
export EDITOR='vim'

# Bash Customizations
source /usr/local/etc/bash_completion.d/git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h \[\033[33;1m\]\w \[\033[1;34m\]\$(__git_ps1)\[\033[m\] \$ "
export PS2="> "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'
alias bp="subl ~/.bash_profile"
alias bpr=". ~/.bash_profile"

# Git Customizations
alias g="git"
complete -o default -o nospace -F _git g
alias gpum="git pull upstream master" # These are shortcuts that I use a lot for Ghost development
alias gpom="git push origin master"

# Apache Modifications
alias httpd="sudo subl /etc/apache2/httpd.conf"
alias vhost="sudo subl /etc/apache2/extra/httpd-vhosts.conf"
alias host="sudo subl /etc/hosts"
alias apr="sudo apachectl restart"

# Ghost-specific Shortcuts
alias pr='f() { git fetch upstream && git checkout pr/"$1" && npm install && grunt init && npm start; }; f' # Used to checkout a Ghost PR for testing
alias prc='f() { git fetch upstream && git checkout pr/"$1" && npm install && bower install; }; f' # Used to checkout a Ghost Client PR for testing