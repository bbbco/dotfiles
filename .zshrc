# Path to your oh-my-zsh installation.
export ZSH=/home/bgoad/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="agnork"
ZSH_THEME="powerlevel9k/powerlevel9k"

export TERM="xterm-256color"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time)
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M | %Y.%m.%d}"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins=(git aws copyfile cp gem github jsontools ssh-agent knife python pylint rvm sudo svn virtualenv vundle safe-paste )
plugins=(git aws copyfile cp gem github jsontools ssh-agent knife python pylint rvm sudo svn virtualenv vundle zsh-syntax-highlighting zsh-completions )

# Reload completion to bring in zsh-completions
autoload -U compinit && compinit

# User configuration
# export PATH="$PATH:/home/bgoad/.rvm/gems/ruby-2.1.0/bin:/home/bgoad/.rvm/gems/ruby-2.1.0@global/bin:/home/bgoad/.rvm/rubies/ruby-2.1.0/bin:/opt/chef/embedded/bin:/home/bgoad/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/bgoad/.rvm/bin:/home/bgoad/.rvm/bin:/home/bgoad/.bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh
source ~/.profile
source ~/.aliases
source ~/.functions


zstyle :omz:plugins:ssh-agent agent-forwarding on
# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="vim ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$PATH:$HOME/go/bin" # Add GO to PATH for scripting

# Completion testing
zstyle ':completion:*' verbose yes
zstyle ':completion:*:descriptions' format '%B%d%b'
zstyle ':completion:*:messages' format '%d'
zstyle ':completion:*:warnings' format 'No matches for: %d'
zstyle ':completion:*' group-name ''

unsetopt HIST_IGNORE_ALL_DUPS
unsetopt HIST_IGNORE_DUPS

export NVM_DIR="/home/bgoad/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# PY env
export PATH="/home/bgoad/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Function to toggle bracketed paste when needed
#toggle-bracketed-paste(){
#    echo -n "Toggling Bracketed Paste "
#    if (( ${+zle_bracketed_paste} )); then
#        echo "Off"
#        unset zle_bracketed_paste
#    else
#        echo "On"
#        autoload -Uz bracketed-paste-magic
#        zle -N bracketed-paste bracketed-paste-magic
#        bracketed-paste
#    fi
#    sleep 2
#    zle redisplay
#}
#zle -N toggle-bracketed-paste
#bindkey '^[^P' toggle-bracketed-paste

eval "$(direnv hook zsh)"
