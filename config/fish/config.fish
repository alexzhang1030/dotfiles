set -gx LANG en_US.UTF-8
set -g fish_greeting ""
set -g fish_key_bindings fish_vi_key_bindings

if status is-interactive
    abbr -a g git
    abbr -a ga git add
    abbr -a gco git checkout
end

# Paths
fish_add_path /bin /usr/bin /usr/local/bin
fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/opt/libpq/bin
fish_add_path /opt/homebrew/opt/ruby/bin

# PNPM
set -gx PNPM_HOME /Users/alex/Library/pnpm
fish_add_path $PNPM_HOME

# Bun
set -gx BUN_INSTALL "$HOME/.bun"
fish_add_path "$BUN_INSTALL/bin"

# Editor
set -gx VISUAL neovide
set -gx EDITOR neovide
set -gx XDG_CONFIG_HOME "$HOME/.config"

# FZF 配置
set -gx FZF_DEFAULT_COMMAND 'fd --type file --follow --hidden --exclude .git --color=always'
set -gx FZF_CTRL_T_COMMAND "$FZF_DEFAULT_COMMAND"
set -gx FZF_DEFAULT_OPTS --ansi

# Zoxide
zoxide init fish | source

# Starship
starship init fish | source

# ----------------------------
# --------- Aliases ----------
# ----------------------------
# 推荐对 Git 使用 abbr，对系统工具使用 alias

abbr -a p pnpm
abbr -a gs "git status"
abbr -a lg lazygit
abbr -a zj zellij
abbr -a lv lvim
abbr -a ra ranger
abbr -a c "cursor ."

alias vim="nvim"
alias ls="lsd"
alias ll="lsd -l"
alias du="dust"
alias as-tree="tree --fromfile"
alias wechat="nohup /Applications/WeChat.app/Contents/MacOS/WeChat > /dev/null 2>&1 &"
alias brewclean="brew cleanup -s --prune=all"
alias brewup="brew update && brew outdated | rg '^[^ ]+' | fzf -m | tr '\n' ' ' | xargs brew upgrade && brew cleanup"
alias jo="joshuto"
alias flush_dns="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder"
alias vr="vp run"

# ----------------------------
# --------- Bindings ---------
# ----------------------------
function fish_user_key_bindings
    bind \cf forward-char
    bind -M insert \cf forward-char
end
