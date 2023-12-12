# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"

# ----------------------------
# ----------- Env ------------
# ----------------------------
source ~/.profile
export PATH=/bin:/usr/bin:/usr/local/bin:$PATH

# path to oh-my-zsh installation.
export ZSH="/Users/alex/.oh-my-zsh"

# pnpm
export PNPM_HOME="/Users/alex/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

# bun completions
[ -s "/Users/alex/.bun/_bun" ] && source "/Users/alex/.bun/_bun"

# bun
export BUN_INSTALL="/Users/alex/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# thefuck
eval $(thefuck --alias)

export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

# for fnm
eval "$(fnm env --use-on-cd)"

add-zsh-hook -Uz chpwd(){ source <(tea -Eds) }  #tea

# set ranger default editor
export VISUAL=nvim
export EDITOR=nvim

# Wasmer
export WASMER_DIR="/Users/alex/.wasmer"
[ -s "$WASMER_DIR/wasmer.sh" ] && source "$WASMER_DIR/wasmer.sh"

# zoxide
eval "$(zoxide init zsh)"

# change lazygit default config path
export XDG_CONFIG_HOME="$HOME/.config"

[ -f "/Users/alex/.ghcup/env" ] && source "/Users/alex/.ghcup/env" # ghcup-envexport PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export PATH="/Users/alex/.moon/bin:$PATH"

export PATH="/opt/homebrew/opt/llvm/bin:$PATH"

# === effso start ===
eval "$(effso env)"
# === effso end ===

# ----------------------------
# --------- Options ----------
# ----------------------------

# fix zsh * flag
setopt no_nomatch

# ----------------------------
# --------- Functions --------
# ----------------------------

# custom functions loading
function load_custom_fns() {
  function_dir="$HOME/.zsh_functions"
  fpath=($function_dir $fpath)
  for function_file in $function_dir/*; do
      function_name="${function_file:t:r}"
      autoload -Uz $function_name
  done
}
load_custom_fns

function fport() {
  lsof -i tcp:$1
}

# ----------------------------
# ---------- Theme -----------
# ----------------------------
ZSH_THEME="spaceship" # standby: spaceship

# ----------------------------
# --------- Plugins ----------
# ----------------------------
plugins=(
	git
	zsh-syntax-highlighting
	zsh-autosuggestions
  vi-mode
)

# ----------------------------
# -------- Shortcuts ---------
# ----------------------------

# zsh auto suggestion
bindkey '^F' autosuggest-accept

# ----------------------------
# ---------- Alias -----------
# ----------------------------

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
alias tail="tailspin" # or you can use tspin
# multrun WeChat
alias wechat="nohup /Applications/WeChat.app/Contents/MacOS/WeChat > /dev/null 2>&1 &"
# clear dns cache
alias clear_dns="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder"
# clear current branch
alias gcl='git_clean_current_branch'
alias rustl='rustlings'
alias tmux-session='~/Desktop/shell-scripts/tmux-session'
alias brewup="brew cleanup -s --prune=all"
# joshuto
alias jo="joshuto"

source $ZSH/oh-my-zsh.sh
#  Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
