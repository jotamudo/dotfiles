# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#./Projects/color-scripts/color-scripts/pacman
#./$(ls ~/Projects/color-scripts/color-scripts | shuf -n 1)
~/.colors.sh

# If you come from bash you might have to change your $PATH.
#source /usr/share/nvm/init-nvm.sh
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="${PATH}:/home/j_mudo/.config/bspwm/"

. $HOME/.asdf/asdf.sh
# . ~/.asdf/plugins/java/set-java-home.zsh
export PATH="/home/j_mudo/Projects/arduino-cli/bin:$PATH"
export PATH="/home/j_mudo/.asdf/bin/asdf:$PATH"
export PATH="/usr/local/go/bin:$PATH"
export PATH="/home/j_mudo/.scripts:$PATH"
export PATH=~/.npm-global/bin:$PATH
export PATH="/home/j_mudo/.local/bin:$PATH"
export PATH="~/.cabal/bin:$PATH"
export EDITOR='nvim'
export JAVA_HOME='/usr/lib/jvm/java-14-openjdk'
export TERMINAL='/usr/bin/st'
#export MANPAGER="nvim -c 'set ft=man' -"
export MANPAGER="vim -M +MANPAGER -"
export _JAVA_AWT_WM_NONREPARENTING=1
export QT_QPA_PLATFORMTHEME=qt5ct
export POLYBARTOGGLE=1

# Path to your oh-my-zsh installation.
export ZSH="/home/j_mudo/.oh-my-zsh"

# Exporting variables for esp-idf
alias get_idf='. $HOME/esp/esp-idf/export.sh'

# Completions:
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
setopt COMPLETE_ALIASES
zstyle ':completion::complete:*' gain-privileges 1

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

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
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	zsh-syntax-highlighting
	zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
#if [[ -n $SSH_CONNECTION ]]; then
#  export EDITOR='vim'
#else
#  export EDITOR='mvim'
#fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias nn="nvim -u ~/.config/nvim/init.lua"
alias n="nvim -u ~/.config/nvim/init_old.vim"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
 typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

#if [ -f ~/.bash_aliases ]; then
#    . ~/.bash_aliases
#fi

#alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# set cursor to ibeam
#printf '\033[5 q\r'

# vim mode
set -o vi
bindkey '^R' history-incremental-search-backward
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'

#export QT_STYLE_OVERRIDE=kvantum
#export PF_INFO="ascii title os wm kernel uptime pkgs memory"

# neofetch
#clear
#neofetch
#panes

#export PS1="\w \[$(tput sgr0)\]"
#export PS1="\[\033[34m\]\w \[$(tput sgr0)\]"

#ln -f -t ~/.config/polybar ~/.config/polybar/themes/miniblocks
#~/.config/polybar/launch.sh
alias mon2cam="deno run --unstable -A -r -q https://raw.githubusercontent.com/ShayBox/Mon2Cam/master/src/mod.ts"
alias mon2cam="deno run --unstable -A -r -q https://raw.githubusercontent.com/ShayBox/Mon2Cam/master/src/mod.ts"
