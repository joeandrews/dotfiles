# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh
export DOTFILES=$HOME/.dotfiles

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

# adding path directory for custom scripts
export PATH=$DOTFILES/bin:$PATH

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin:/usr/X11/bin:/usr/local/git/bin:/Users/gregoryblock/bin:/Users/gregoryblock/.nvm/versions/node:/usr/local/share/npm/bin:$PATH"

[ -z "$TMUX" ] && export TERM=xterm-256color

export API_URL=$(ipconfig getifaddr en0)

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
alias 'ga'='git add --all'
alias 'st'="status"
alias 'zc'='zeus c'
alias 'zrr'="zeus rake routes"
alias 'rr'='rake routes'
alias 'rdl'='tail -f log/development.log'
alias 'rake'='bin/rake'
alias 'spring st'='spring status'
alias 'spring start'="rake routes; spring status"
alias 'hg'='git'
alias 'subl'='sublime'
alias 'gsubup'='git submodule update --recursive'
alias 'disd'='sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.discoveryd.plist;sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.discoveryd.plist;'
alias 'rbuild'='cd ~/radish/build'
alias 'rweb'='cd ~/radish/website'
alias 'rmobile'='cd ~/radish/mobile'
alias 'rback'='cd ~/radish/backend'
alias 'rapp'='cd ~/radish/app'

# PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

function mkcd () { mkdir -p "$@" && eval cd "\"\$$#\""; }
[[ -s /Users/gregoryblock/.nvm/nvm.sh ]] && . /Users/gregoryblock/.nvm/nvm.sh # This loads NVM
