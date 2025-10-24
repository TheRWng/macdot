#
# ~/.bashrc
#

# Add your own exports, aliases, and functions here.
#
# Make an alias for invoking commands you use constantly
# alias p='python'

alias ls='eza -alh --group-directories-first --icons=auto'
alias lst="eza --all --tree --level=2 --color=always --icons=always --no-user --no-filesize"
alias scanleaks='gitleaks detect --source . -v'

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
