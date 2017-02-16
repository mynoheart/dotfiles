# Path to your oh-my-fish.

set -x LANG "en_US.UTF-8"

set fish_path $HOME/.oh-my-fish

# Path to Oh My Fish install.
set -gx OMF_PATH "/home/mynoheart/.local/share/omf"

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG "/home/mynoheart/.config/omf"

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

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

set -x PATH $PATH ~/.gotools/
set -x PKG_CONFIG_PATH $GOPATH/pkg-configs

if test -e ~/.config/fish/config-local.fish
  source ~/.config/fish/config-local.fish
end

set -x PATH /usr/local/bin/ $PATH 

alias vimnp 'vim --noplugin'
alias vima 'vim -u ~/.vimrca --cmd \'set runtimepath=~/.vima,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after\''
