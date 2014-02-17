set shell=bash
set nocompatible
syntax on
filetype off
set rtp+=~/.vim/bundle/vundle/
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim/
call vundle#rc()
"Plugins
Bundle 'gmarik/vundle'
Bundle 'scrooloose/syntastic'
Bundle 'Lokaltog/powerline'
Bundle 'daylerees/colour-schemes', {'rtp': 'vim-themes/'}
Bundle 'Shougo/neocomplcache'
Bundle 'scrooloose/nerdtree'
Bundle 'corntrace/bufexplorer'
Bundle 'kien/ctrlp.vim'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"
Bundle "triglav/vim-visual-increment"
Bundle "mustache/vim-mustache-handlebars"
Bundle "airblade/vim-gitgutter"
Bundle "godlygeek/tabular"
Bundle "ekalinin/Dockerfile.vim"
Bundle "evanmiller/nginx-vim-syntax"
"colorscheme Tron 
set number
"hi FoldColumn ctermbg=222222
hi SignColumn ctermbg=222222
hi CursorLine cterm=NONE ctermbg=237
hi Visual ctermbg=237

filetype plugin indent on
let g:ctrlp_cmd = 'CtrlPBuffer'
let g:syntastic_enable_signs=1
let g:mustache_abbreviations = 1
set laststatus=2
map <F6> :source ~/.vimrc<CR>
map <F2> :w<CR>
map <F10> :q<CR>
map <F11> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
nnoremap <F3> :set nonumber!<CR>
set pastetoggle=<F9>
set expandtab
set tabstop=2
set shiftwidth=2
set timeoutlen=1000 ttimeoutlen=0
set noshowmode
set cursorline
" Tell vim to remember certain things when we exit
" "  '10  :  marks will be remembered for up to 10 previously edited files
" "  "100 :  will save up to 100 lines for each register
" "  :20  :  up to 20 lines of command-line history will be remembered
" "  %    :  saves and restores the buffer list
" "  n... :  where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.viminfo
retab
function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END
au InsertLeave * :w
