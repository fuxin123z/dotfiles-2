# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME=joebadmo

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:/bin:/usr/sbin:/sbin:/usr/bin:/usr/X11/bin:~/bin:/usr/local/share/npm/bin:

# More extensive tab completion
autoload -U compinit
compinit

# tab completion from both ends
setopt completeinword

# case-insensitive tab completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# vi mode
bindkey -v

# reverse search in vi mode
bindkey "^R" history-incremental-search-backward

# environment variables
export NODE_PATH='/usr/local/lib/node_modules'

export JAVA_HOME=$(/usr/libexec/java_home)

# source passwords
source ~/.pw

# boxen
[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh

# use macvim in terminal instead of vim to keep system clipboard functionality
alias vim='mvim -v'

# rbenv
eval "$(rbenv init -)"

# turn off autocorrect
unsetopt correct_all

alias ffh="/Users/joe/Work/appfog/appfog-bootstrap/bin/ffh2"
alias afa="af -u admin@appfog.com"
