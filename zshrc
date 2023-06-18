# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
source ~/.profile

export PATH=/bin:/usr/bin:/usr/local/bin:$PATH

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/alex/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="spaceship" # standby: spaceship

# Pure Theme: https://github.com/sindresorhus/pure
# autoload -U promptinit; promptinit
# prompt pure

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
# zstyle ':omz:update' mode auto      # update automatically without asking
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
plugins=(
	git
	zsh-syntax-highlighting
	zsh-autosuggestions
  vi-mode
)

source $ZSH/oh-my-zsh.sh

# User configuration

# zsh auto suggestion
bindkey '^F' autosuggest-accept

# export MANPATH="/usr/local/man:$MANPATH"

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# alias
alias p="pnpm"
alias gs="git status"
alias lg="lazygit"
alias zj="zellij"
alias nv="neovide"
alias lv="lvim"
alias etd="extd-cli"
alias ra="ranger"
# for system commands alternative
alias v="nvim"
alias vim="nvim"
alias ls="lsd"
alias ll="lsd -l"
alias du="dust"
alias tree="exa -T"
alias cat="bat"
# multrun WeChat
alias wechat="nohup /Applications/WeChat.app/Contents/MacOS/WeChat > /dev/null 2>&1 &"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Fig post block. Keep at the bottom of this file.

# fix zsh * flag
setopt no_nomatch

# pnpm
export PNPM_HOME="/Users/alex/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

# bun completions
[ -s "/Users/alex/.bun/_bun" ] && source "/Users/alex/.bun/_bun"

# Bun
export BUN_INSTALL="/Users/alex/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"


# my custom widget
function clean_command() {
  zle clear-screen
}
zle -N clean_command
bindkey -M viins "\eg" clean_command

# azure server
alias azure="ssh -i ~/.ssh/azure/azure-server.cer azureuser@20.235.120.56"

# tencent ubuntu
function tencent() {
  ssh 42.192.133.231 -l ubuntu
}

# for llama
alias lla="llama"

# MY CUSTOM CODE
export PATH=$PATH:/Users/alex/.spicetify
alias rustl='rustlings'
alias tmux-session='~/Desktop/shell-scripts/tmux-session'
alias brewup="brew cleanup -s --prune=all"
# joshuto
alias jo="joshuto"
# alacritty start
set_alacritty_opacity() {
  yq e -i ".window.opacity = $1" ~/.config/alacritty/alacritty.yml
}
check_alacritty_opacity() {
  current_term=`echo $TERM`
  # screen-256color is `tmux`
  if [[ "$current_term" != "alacritty" || "$current_term" != 'screen-256color' ]]; then
    return
  fi
  opacity=`yq '.window.opacity' ~/.config/alacritty/alacritty.yml`

  if [ "$opacity" == "0.85" ]; then
    set_alacritty_opacity "1"
  else
    set_alacritty_opacity "0.85"
  fi 
}
zle -N toggle_alacritty_opacity check_alacritty_opacity
# ctrl + O 切换 alacritty 的透明
bindkey '^O' toggle_alacritty_opacity
# alacritty end

function fport() {
  lsof -i tcp:$1
}

# thefuck
eval $(thefuck --alias)

export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

# for fnm
eval "$(fnm env --use-on-cd)"

add-zsh-hook -Uz chpwd(){ source <(tea -Eds) }  #tea

# set ranger default editor
export VISUAL=nvim
export EDITOR=nvim

# for githubnext/copilot-cli
eval "$(github-copilot-cli alias -- "$0")"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"

# Wasmer
export WASMER_DIR="/Users/alex/.wasmer"
[ -s "$WASMER_DIR/wasmer.sh" ] && source "$WASMER_DIR/wasmer.sh"

# zoxide
eval "$(zoxide init zsh)"

# change lazygit default config path
export XDG_CONFIG_HOME="$HOME/.config"
