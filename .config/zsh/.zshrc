HISTFILE=$ZDOTDIR/history
HISTSIZE=1000
SAVEHIST=5000
setopt hist_ignore_all_dups
unsetopt beep

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' menu select
autoload -Uz compinit 
compinit -d $ZDOTDIR/zcompdump-$ZSH_VERSION
setopt COMPLETE_ALIASES

PATH="$HOME/bin:$PATH"
PATH="$HOME/.local/bin:$PATH"
PATH="$HOME/.dotnet/tools:$PATH"
export PATH
export EDITOR=vim
export VISUAL=vim
export PAGER="less -i -j.5 -R --use-color -Dd+y -Du+c"

alias sudo='doas'
alias sudoedit='doas $EDITOR'

alias q='exit'
alias c='clear'
alias nf='pfetch'
alias t='todo.sh'

alias ls='exa'
alias l='ls -1'
alias la='ls -1a'
alias ll='ls -la'
alias lt='ls -T'
alias lh="ls -1dI '.|..' .*"

alias gs='git status'
alias lg="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(cyan)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"

alias config='/usr/bin/git --git-dir=/home/adam/.cfg/ --work-tree=/home/adam'
alias cs='config status'
alias clg="config log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(cyan)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"

alias zshrc='vim $XDG_CONFIG_HOME/zsh/.zshrc'
alias vimrc='vim ~/.vim/vimrc'
alias nvimrc='cd $XDG_CONFIG_HOME/nvim;nvim'
alias i3config='vim $XDG_CONFIG_HOME/i3/config'
alias startup='vim $XDG_CONFIG_HOME/i3/init'

function zvm_after_init() {
    source '/usr/share/fzf/key-bindings.zsh'
    source '/usr/share/fzf/completion.zsh'
    bindkey '^ ' autosuggest-accept
    bindkey '\e.' insert-last-word
}

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

source '/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh'
source '/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh'
source '/usr/share/zsh/plugins/zsh-vi-mode/zsh-vi-mode.zsh'

pfetch
