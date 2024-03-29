zmodload zsh/zprof


# BEGIN P10K INSTANT PROMPT ANSIBLE MANAGED BLOCK
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# END P10K INSTANT PROMPT ANSIBLE MANAGED BLOCK
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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

# export NVM_LAZY_LOAD=true
plugins=(zsh-autoswitch-conda zshfl auto-color-ls z zsh-autosuggestions fzf)

source $ZSH/oh-my-zsh.sh
source $(dirname $(gem which colorls))/tab_complete.sh

# User configuration


# Custom Aliases
alias vz="nvim ~/.zshrc"
alias voz="nvim ~/.oh-my-zsh"
alias vd="nvim ~/dotfiles"
alias vc="nvim ~/.ssh/config"
alias v="nvim"

alias lsc='colorls -lA --sd'
alias ls='colorls -a --sd'

alias cdh='cd ~'
alias code="code-insiders ."
alias cdd="cd .."
alias cl="clear"

alias tm="tmux"
alias tma="tmux attach -t"
alias st="speedtest"
alias cda="conda activate"
alias lg="lazygit"
alias ld="lazydocker"
alias x="exit"

alias dsp="docker system prune"
alias pnx="pnpm nx"

alias dacli='docker run --rm -it -v $(pwd):/ansible --workdir=/ansible willhallonline/ansible:latest /bin/sh'
alias dacmd='docker run --rm -it -v $(pwd):/ansible --workdir=/ansible willhallonline/ansible:latest '

alias awsd="source _awsd"
alias tf='terraform'


# Custom export
export GOROOT=/usr/local/go-1.18.3
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
export PATH=$HOME/.gem:$PATH
export PATH="$HOME/.local/bin:$PATH"
export PATH="/usr/local/bin/flutter/bin:$PATH"
export PATH="$PATH:/mnt/c/Program Files/Oracle/VirtualBox"
export PATH="$PATH:/home/adit/cloud-sql-proxy"
export PATH="$PATH:/usr/local/texlive/2023/bin/x86_64-linux"
export PATH="$PATH:/mnt/c/Users/adity/Downloads/SumatraPDF.exe"
export CONDA_AUTO_ACTIVATE_BASE=false
export FLYCTL_INSTALL="/home/adit/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"

# Auto gitlab ssh-add
eval `ssh-agent -s` &>/dev/null
ssh-add ~/.ssh/id_ed25519_gitlab &>/dev/null

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/adit/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/adit/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/adit/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/adit/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Start Docker daemon automatically when logging in if not running.
RUNNING=`ps aux | grep dockerd | grep -v grep`


# Start Docker on WSL
if service docker status 2>&1 | grep -q "is not running"; then
    wsl.exe -d "${WSL_DISTRO_NAME}" -u root -e /usr/sbin/service docker start >/dev/null 2>&1
fi

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/bin/terraform terraform

# BEGIN P10K CONFIG FILE ANSIBLE MANAGED BLOCK
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# END P10K CONFIG FILE ANSIBLE MANAGED BLOCK

# pnpm
export PNPM_HOME="/home/adit/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

[[ -s "/home/adit/.gvm/scripts/gvm" ]] && source "/home/adit/.gvm/scripts/gvm"
fpath=(~/.zsh.d/ $fpath)
