# session configs
#
autoload -Uz compinit
compinit

# setup homebrew
#
if [[ $(uname -m) == "arm64" ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
elif [[ -e /usr/local/bin/brew ]]; then
  eval "$(/usr/local/bin/brew shellenv)"
fi


# PATH
#
export PATH="$HOME/.cargo/bin:$PATH"

# aliases
#
alias k="kubectl"
alias g="git"
alias config='/usr/bin/git --git-dir=$HOME/.cfg/.git --work-tree=$HOME'
alias repo="cd ~/code/src/github.com/hanapedia/"
alias vivi="cd ~/code/src/github.com/vivianeinc/"
alias restart="source ~/.zshrc"
alias python="$(pyenv which python)"

# keybinds
#
bindkey '^f' autosuggest-accept
# zsh-vi-mode
ZVM_VI_INSERT_ESCAPE_BINDKEY=jk

# variables
#
export TERM=xterm-256color
export LC_CTYPE=en_US.UTF-8

# completions
#
source <(kubectl completion zsh)

# zplug
#
export ZPLUG_HOME=/opt/homebrew/opt/zplug
source $ZPLUG_HOME/init.zsh
zplug 'zplug/zplug', hook-build:'zplug --self-manage'
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-history-substring-search"
zplug "jeffreytse/zsh-vi-mode"
# my theme
zplug "hanapedia/my-zsh-theme", from:github, as:theme, use:"mytheme.zsh"
# zplug "~/code/src/github.com/hanapedia/my-zsh-theme", from:local, as:theme, use:"mytheme.zsh"

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi
# Then, source plugins and add commands to $PATH
zplug load


### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/hanapedia/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)
