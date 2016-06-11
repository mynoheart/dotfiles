# Path to your oh-my-fish.

set -x LANG "en_US.UTF-8"

set fish_path $HOME/.oh-my-fish
set -x OCI_HOME /opt/instantclient_12_1
set -x OCI_LIB_DIR $OCI_HOME
set -x OCI_INCLUDE_DIR $OCI_HOME/sdk/include
set -x OCI_INC_DIR $OCI_HOME/sdk/include
set -x OCI_VERSION 12

# Path to Oh My Fish install.
set -gx OMF_PATH "/home/mynoheart/.local/share/omf"

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG "/home/mynoheart/.config/omf"

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

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
