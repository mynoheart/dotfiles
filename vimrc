set shell=bash
set nocompatible

syntax on
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim/
set backupdir=/tmp
set directory=/tmp
call vundle#begin()
"Plugins
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'Lokaltog/powerline'
Plugin 'Shougo/neocomplete.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'corntrace/bufexplorer'
Plugin 'kien/ctrlp.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'triglav/vim-visual-increment'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'airblade/vim-gitgutter'
Plugin 'godlygeek/tabular'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'evanmiller/nginx-vim-syntax'
Plugin 'dag/vim-fish'
Plugin 'fatih/vim-go'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tomtom/tcomment_vim'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'gregsexton/MatchTag'
Plugin 'majutsushi/tagbar'
Plugin 'cespare/vim-toml'
call vundle#end()
filetype plugin indent on
set number
"hi FoldColumn ctermbg=222222
hi SignColumn ctermbg=222222
hi CursorLine cterm=NONE ctermbg=237
hi Visual ctermbg=239
hi Search ctermbg=239

let g:ctrlp_cmd = 'CtrlPBuffer'
let g:syntastic_enable_signs=1
let g:syntastic_ignore_files = [ '\.go$' ]
let g:syntastic_html_tidy_ignore_errors = [ '{{', '}}', 'unexpected or duplicate quote mark', 'proprietary attribute', 'trimming' ]
let g:mustache_abbreviations = 1
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>e <Plug>(go-rename)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
"let g:asmsyntax = 'nasm'
set laststatus=2
map <F5> :e<CR>
map <F6> :source ~/.vimrc<CR>
map <F2> :w<CR>
map <C-s> :w<CR>
imap <C-s> <Esc>:w<CR>
map <F10> :q<CR>
map <F11> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
nnoremap <F3> :set nonumber!<CR>
noremap <F7> :set hlsearch! hlsearch? <CR>
set pastetoggle=<F9>
set expandtab
set tabstop=2
set shiftwidth=2
set timeoutlen=1000 ttimeoutlen=0
set noshowmode
set cursorline
set nrformats=alpha
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
" au InsertLeave * :w

set mouse=a
set noequalalways
