# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish
set -x OCI_HOME /opt/instantclient_12_1
set -x OCI_LIB_DIR $OCI_HOME
set -x OCI_INCLUDE_DIR $OCI_HOME/sdk/include
set -x OCI_INC_DIR $OCI_HOME/sdk/include
set -x OCI_VERSION 12
# Theme
# set fish_theme agnoster
set fish_theme bobthefish
# set fish_theme coffeeandcode
# set fish_theme cor
# set fish_theme fishface
# set fish_theme idan
# set fish_theme jacaetevha
# set fish_theme krisleech
# set fish_theme l
# set fish_theme numist
# set fish_theme robbyrussell
# set fish_theme uggedal
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-fish/plugins/*)
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Example format: set fish_plugins autojump bundler

# Path to your custom folder (default path is $FISH/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish
if test -f $HOME/.cwd;cd (cat $HOME/.cwd); end
# set PATH $PATH (ruby -rubygems -e 'puts Gem.user_dir')/bin
alias cdcur 'cd (cat ~/.cwd)'

#git aliases
alias ga 'git add'
alias gs 'git status'
alias gl 'git lg'
alias gc 'git commit'
alias gp 'git push'
alias gpl 'git pull'
alias gd 'git diff'

#npm aliases
alias npm-exec 'set PATH $PATH (npm bin)'

# set -x GOPATH ~/Develop/go
# set -x PATH $PATH $GOPATH/bin/
set -x PATH $PATH ~/.gotools/
set -x PKG_CONFIG_PATH $GOPATH/pkg-configs

# set -x ORACLE_HOME /usr/lib/oracle/product/11.2.0/xe
# set -x TNS_ADMIN $HOME/oracle-home/

set -x NLS_LANG 'AMERICAN_AMERICA.AL32UTF8'
set -x LD_LIBRARY_PATH /opt/instantclient_12_1/
