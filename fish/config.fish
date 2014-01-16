# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish
set -x OCI_HOME /opt/instantclient_11_2
set -x OCI_LIB_DIR $OCI_HOME
set -x OCI_INCLUDE_DIR $OCI_HOME/sdk/include
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
set PATH $PATH (ruby -rubygems -e 'puts Gem.user_dir')/bin
alias cdcur 'cd (cat ~/.cwd)'

