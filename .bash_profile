#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export XDG_CONFIG_HOME=$HOME/.config 
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share 
export XDG_STATE_HOME=$HOME/.local/state 
export XDG_DATA_DIRS="/usr/local/share:/usr/share"
export XDG_CONFIG_DIRS="/etc/xdg"

export MAKEFLAGS="-j$(nproc)"
export HISTFILE=$XDG_STATE_HOME/bash/history
export INPUTRC=$XDG_CONFIG_HOME/readline/inputrc 
export PASSWORD_STORE_DIR=$XDG_DATA_HOME/pass 
export RANGER_LOAD_DEFAULT_RC=FALSE
export CARGO_HOME=$XDG_DATA_HOME/cargo 
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export NUGET_PACKAGES=$XDG_CACHE_HOME/NuGetPackages
export CUDA_CACHE_PATH=$XDG_CACHE_HOME/nv 
export GNUPGHOME=$XDG_DATA_HOME/gnupg
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot=$XDG_CONFIG_HOME/java 
export NEXTCLOUD_PHP_CONFIG=/etc/webapps/nextcloud/php.ini
