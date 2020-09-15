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
export LANG=en_US.UTF-8
export PATH="$PATH:/home/rodolfo/Android/Sdk/emulator/"
export PATH="$PATH:/home/rodolfo/flutter/bin"
export PATH="$PATH:/home/rodolfo/.cargo/bin"

# Not using now ... 
# go stufs
#export GOROOT=/usr/local/go
#GOPATH=$HOME/dev/go
#export GOPATH
#export RDGO=$GOPATH/src/github.com/rodolfodmn
#export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
#export PATH=~/.npm-global/bin:$PATH

# gtk for c, c++
#export CPATH=$CPATH:/usr/include/gtk-3.0
#export CPATH=$CPATH:/usr/include/gtk-2.0
#export CPATH=$CPATH:/usr/include/glib-2.0/
#export CPATH=$CPATH:/usr/include/glib-3.0/
#export CPATH=$CPATH:/usr/lib/glib-2.0/include/
#export CPATH=$CPATH:/usr/include/pango-1.0/
#export CPATH=$CPATH:/usr/lib/gtk-2.0/include/
#export CPATH=$CPATH:/usr/include/atk-1.0/
#export LIBRARY_PATH="/usr/include/gtk-3.0:$LIBRARY_PATH"

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
storeso="/var/www/html/stores"

# execs
alias python="python3"
alias runm1="~/dev/bash/ini_docker.sh"
alias runm2="~/dev/bash/ini_docker_m2.sh"
alias pixel="~/dev/aseprite/build/bin/aseprite"
alias trus="~/dev/work/rust/magento-dev/target/debug/magento-dev"
alias ov="nvim ."
alias rzsh="source ~/.zshrc"
alias tes="~/dev/bash/teste.sh"
alias pexe="~/dev/bash/exec_php.sh"

# open configs
alias nrc="nvim ~/.config/nvim/init.vim"
alias vrc="nvim ~/.vimrc"
alias zrc="nvim ~/.zshrc"
alias ei3="nvim ~/.config/i3/config"
alias terc="nvim ~/.config/xfce4/terminal/terminalrc"
# send configs
alias snv="cat ~/.config/nvim/init.vim > ~/dev/dotfiles/init.vim"
alias szr="cat ~/.zshrc > ~/dev/dotfiles/zshrc"
alias ste="cat ~/.config/xfce4/terminal/terminalrc > ~/dev/dotfiles/terminal/terminalrc"
alias si3="cat ~/.config/i3/config > ~/dev/dotfiles/i3/config"

# old stufs
alias im"=~/dev/bash/install_module.sh"
alias gubee"=~/dev/bash/install_gubee_modules.sh"
alias gab"=~/dev/bash/git_commit_api_bis2bis.sh"
alias gtd"=~/dev/bash/git_commit_api_gtd.sh"
alias gamp"=~/dev/bash/git_commit_api_places.sh"

# dev magento
alias iniser="~/dev/bash/initserver.sh"
alias run="~/dev/bash/run_vue.sh"
alias mod"=~/dev/bash/run_mod.sh"
alias upm="~/dev/bash/up_module.sh"
alias is="~/dev/bash/install_store.sh"
alias ca="~/dev/bash/cache_clean.sh"
alias cs="~/dev/bash/cache_session_clean.sh"
alias mg="~/dev/bash/mage_log.sh"
alias cr="~/dev/bash/clear_reports.sh"

# git
alias gc"=~/dev/bash/git_clone.sh"
alias hh"=~/dev/bash/git_hard_head.sh"
alias rh"=~/dev/bash/git_reset_head.sh"



