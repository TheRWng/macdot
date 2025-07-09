# git clone --depth=1 https://github.com/mattmc3/antidote.git ${ZDOTDIR:-$HOME}/.antidote
# chsh -s $(which zsh)

# source antidote
source $HOME/.antidote/antidote.zsh
antidote load

autoload -Uz compinit && compinit
autoload -Uz promptinit && promptinit && prompt pure
eval "$(zoxide init zsh)"
source <(fzf --zsh)

# atuin commands
# atuin register -u <USERNAME> -e <EMAIL>
# atuin import auto
# atuin sync
eval "$(atuin init zsh)"

# Keybinds

# export PATH="$HOME/.local/bin/:$PATH"
# bindkey -s ^f "tmux-sessionizer\n"
# bindkey -s '\eh' "tmux-sessionizer -s 0\n"
# bindkey -s '\et' "tmux-sessionizer -s 1\n"
# bindkey -s '\en' "tmux-sessionizer -s 2\n"
# bindkey -s '\es' "tmux-sessionizer -s 3\n"

# Auto-suggest
bindkey '^[[27;2;13~' autosuggest-accept    # shift+enter

# Aliases
alias new='open -n -a'
alias vim='nvim'
alias tmux="tmux -2"
alias find='fd'
alias cat='bat --paging=never'
alias ls="eza --all --group-directories-first --sort=modified --color=always --icons=always --no-user --no-filesize"
alias lst="eza --all --tree --level=2 --color=always --icons=always --no-user --no-filesize"
alias grep='rg --smart-case --hidden'

alias scanleaks='gitleaks detect --source . -v'
alias magic='chmod +x'
alias unstow='stow -D'

# Prevent accidental overwrites and appends
set -o noclobber
