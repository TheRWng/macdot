# brew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Bat configuration
export BAT_THEME="ansi"  # Uses terminal colors

#FZF Configuration

# Core settings
export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude '.git' --exclude '.svn' --exclude '.hg'"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude '.git' --exclude '.svn' --exclude '.hg'"

# wl-copy for wayland!
# export FZF_DEFAULT_OPTS="--ansi --height 50% --layout=reverse --border --color=hl:#EB6F92 --pointer='❯' --scheme=path --bind 'ctrl-y:execute-silent(echo -n {} | wl-copy)'"

# Preview configurations
export FZF_CTRL_T_OPTS="--preview 'bat --line-range :500 {}'"
export FZF_ALT_C_OPTS="--ansi --preview 'eza --icons --tree --color=always {} | head -200'"

# Tmux settings
export FZF_TMUX_OPTS="-p90%,70%"
