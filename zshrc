# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gb"
bindkey -v

plugins=(git osx ruby bundler brew)
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
 DISABLE_AUTO_UPDATE="true" 

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

unsetopt correct_all

# Customize to your needs...
export PATH=/Users/gregoryblock/.rvm/gems/ruby-1.9.3-p194@rails3tutorial2ndEd/bin:/Users/gregoryblock/.rvm/gems/ruby-1.9.3-p194@global/bin:/Users/gregoryblock/.rvm/rubies/ruby-1.9.3-p194/bin:/Users/gregoryblock/.rvm/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin:/usr/X11/bin:/usr/local/git/bin:/Users/gregoryblock/bin

alias "guard"="bundle exec guard"
alias "cl"="clear"
alias md5='md5 -r'
alias md5sum='md5 -r'
alias "rake"="bundle exec rake"

alias 'glp'="git log --graph --pretty=format:'%Cred%h%Creset -%Cblue %an %Creset - %C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"

alias 'pg_start'='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias 'pg_stop'='pg_ctl -D /usr/local/var/postgres stop -s -m fast'
alias 'pg_status'='pg_ctl -D /usr/local/var/postgres status'
alias 'gum'='git fetch upstream; git merge upstream/master'
alias 'zrmt'='zeus rake db:migrate; zeus rake db:test:prepare'
alias 'rmt'='rake db:migrate; rake db:test:prepare'
alias 'g'="git"
alias 'ga'='git add -A .'
alias 'st'="status"
alias 'zc'='zeus c'
alias 'zrr'="zeus rake routes"
alias 'rr'='rake routes'
alias 'rdl'='tail -f log/development.log'
alias 'rake'='bin/rake'
alias 'spring st'='spring status'
alias 'spring start'="rake routes; spring status"

export WOMSTREET_EMAIL="gregblock@womstreet.com"
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

function mkcd () { mkdir -p "$@" && eval cd "\"\$$#\""; }
[[ -s /Users/gregoryblock/.nvm/nvm.sh ]] && . /Users/gregoryblock/.nvm/nvm.sh # This loads NVM
