# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/rodolfo/.oh-my-zsh"

ZSH_THEME="bira"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration
export PATH="$PATH:/home/rodolfo/Android/Sdk/emulator/"
export PATH="$PATH:/home/rodolfo/flutter/bin"
export PATH="$PATH:/home/rodolfo/.cargo/bin"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

#bash files
alias rser="~/dev/bash/restart_apache.sh"

# goto folder
alias grust="cd ~/dev/work/rust/"
alias gmods="cd ~/dev/modules/"
alias gdev="cd ~/dev/"
alias gstores="cd ~/dev/html/stores/"
alias gbashs="cd ~/dev/bash"
alias gdockers="cd ~/dev/dockers"

# folders
rust="$HOME/dev/work/rust/"
mods="$HOME/dev/modules/"
dev="$HOME/dev/"
stores="$HOME/dev/html/stores/"
bashs="$HOME/dev/bash"
dockers="$HOME/dev/dockers"

# execs
# alias vim="nvim"
alias python="python3"
alias runm1="~/dev/bash/ini_docker.sh"
alias pixel="~/dev/aseprite/build/bin/aseprite"
alias trus="~/dev/work/rust/magento-dev/target/debug/magento-dev"
alias ov="nvim ."
alias rzsh="source ~/.zshrc"

# open configs
alias nrc="nvim ~/.config/nvim/init.vim"
alias vrc="nvim ~/.vimrc"
alias zrc="nvim ~/.zshrc"
alias ei3="nvim ~/.config/i3/config"
alias terc="nvim ~/.config/xfce4/terminal/terminalrc"
