# CodeWhisperer pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.pre.zsh"
# ----------------------------
# --------- Startup ----------
# ----------------------------

# ----------------------------
# -------- Functions ---------
# ----------------------------

function load_fns() {
  function_dir="$HOME/.zsh_functions"
  fpath=($function_dir $fpath)
  for function_file in $function_dir/*; do
      function_name=$(basename $function_file)
      autoload -Uz $function_name
  done
}
load_fns # call when initializing

function fport() {
  lsof -i tcp:$1
}

# yazi
function ya() {
	tmp="$(mktemp -t "yazi-cwd.XXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# ----------------------------
# ----------- Env ------------
# ----------------------------
source ~/.profile
export PATH=/bin:/usr/bin:/usr/local/bin:$PATH
export PATH="/opt/homebrew/bin:$PATH"
export ZSH="/Users/alex/.oh-my-zsh"

# pnpm
export PNPM_HOME="/Users/alex/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

# bun completions
[ -s "/Users/alex/.bun/_bun" ] && source "/Users/alex/.bun/_bun"

# Bun
export BUN_INSTALL="/Users/alex/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# thefuck
eval $(thefuck --alias)
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

# for fnm
eval "$(fnm env --use-on-cd)"

# Wasmer
export WASMER_DIR="/Users/alex/.wasmer"
[ -s "$WASMER_DIR/wasmer.sh" ] && source "$WASMER_DIR/wasmer.sh"

# zoxide
eval "$(zoxide init zsh)"

# change lazygit default config path
export XDG_CONFIG_HOME="$HOME/.config"

[ -f "/Users/alex/.ghcup/env" ] && source "/Users/alex/.ghcup/env" # ghcup-envexport PATH="/opt/homebrew/opt/ruby/bin:$PATH"

# moonbit
export PATH="/Users/alex/.moon/bin:$PATH"

# set ranger default editor
export VISUAL=nvim
export EDITOR=nvim

# === effso start ===
eval "$(effso env)"
# === effso end ===

# dasel
export fpath=(~/zsh/site-functions $fpath)
mkdir -p ~/zsh/site-functions
dasel completion zsh > ~/zsh/site-functions/_dasel
compinit

# fzf
export FZF_DEFAULT_COMMAND='fd --type file --follow --hidden --exclude .git --color=always'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_OPTS="--ansi"
# ----------------------------
# ---------- Config ----------
# ----------------------------
ZSH_THEME="spaceship"

# fix zsh * flag
setopt no_nomatch

# shortcuts
bindkey '^F' autosuggest-accept

# ----------------------------
# --------- Plugins ----------
# ----------------------------
plugins=(
	git
	zsh-syntax-highlighting
	zsh-autosuggestions
  vi-mode
  git-open
)

# setup oh-my-zsh
source $ZSH/oh-my-zsh.sh

# ----------------------------
# --------- Aliases ----------
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
alias vim="nvim"
alias ls="lsd"
alias ll="lsd -l"
alias du="dust"
alias as-tree="tree --fromfile"
# alias tree="exa -T"
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
alias jo="joshuto"
alias ??="gh copilot suggest"

# ----------------------------
# -------- Completion --------
# ----------------------------

#  Fig post block. Keep at the bottom of this file.


[[ -f "$HOME/fig-export/dotfiles/dotfile.zsh" ]] && builtin source "$HOME/fig-export/dotfiles/dotfile.zsh"

# CodeWhisperer post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.post.zsh"
