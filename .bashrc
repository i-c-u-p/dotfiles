# If not running interactively, don't do anything
[[ $- != *i* ]] && return

HISTCONTROL=ignoreboth:erasedups
HISTSIZE=1000
HISTFILESIZE=5000

shopt -s histappend
shopt -s checkwinsize

PATH="$HOME/bin:$PATH"
PATH="$HOME/.local/bin:$PATH"
PATH="$HOME/.dotnet/tools:$PATH"
export PATH
export EDITOR=vim
export VISUAL=vim
export PAGER=most
export PS1='\[\033[35m\]rpi\[\033[37m\]:\[\033[0;34m\]\w\[\033[37m\]$ '

source '/usr/share/fzf/key-bindings.bash'
source '/usr/share/fzf/completion.bash'
source '/usr/share/autojump/autojump.bash'

alias q='exit'
alias c='clear'
alias r='ranger'
alias nf='neofetch'

alias ls='exa'
alias l='exa -1'
alias la='exa -1a'
alias ll='exa -la'
alias lt='exa -T'
alias lh="exa -1dI '.|..' .*"

alias gs='git status'
alias lg="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(cyan)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"

alias config='/usr/bin/git --git-dir=/home/adam/.cfg/ --work-tree=/home/adam'
alias cs='config status'
alias clg="config log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(cyan)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"

alias bashrc='vim ~/.bashrc'
alias vimrc='vim ~/.vim/vimrc'
