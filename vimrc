set shell=/usr/bin/sh
set nocompatible

syntax on
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim/
set backupdir=/tmp
set directory=/tmp
call vundle#begin()
"Plugins
 Plugin 'VundleVim/Vundle.vim'

 "Lib
   Plugin 'tomtom/tlib_vim'
   Plugin 'MarcWeber/vim-addon-mw-utils'
 "

 "Syntax
   Plugin 'scrooloose/syntastic'
   Plugin 'evanmiller/nginx-vim-syntax'
   Plugin 'mustache/vim-mustache-handlebars'
   Plugin 'ekalinin/Dockerfile.vim'
   Plugin 'dag/vim-fish'
   Plugin 'cespare/vim-toml'
   Plugin 'pangloss/vim-javascript'
 "

 "Interface
   Plugin 'powerline/powerline'
   Plugin 'scrooloose/nerdtree'
   Plugin 'corntrace/bufexplorer'
   Plugin 'ctrlpvim/ctrlp.vim'
   Plugin 'airblade/vim-gitgutter'
   Plugin 'bronson/vim-trailing-whitespace'
   Plugin 'majutsushi/tagbar'
   Plugin 'eugen0329/vim-esearch'
 "

 "Complete, snippets
   Plugin 'Valloric/YouCompleteMe'
   Plugin 'SirVer/ultisnips'
   Plugin 'honza/vim-snippets'
   Plugin 'Shougo/neocomplete.vim'
 "

 "Edit
   Plugin 'triglav/vim-visual-increment'
   Plugin 'godlygeek/tabular'
   Plugin 'jiangmiao/auto-pairs'
   Plugin 'tomtom/tcomment_vim'
   Plugin 'ternjs/tern_for_vim'
   Plugin 'tpope/vim-surround'
 "

 "Complex
   Plugin 'fatih/vim-go'
 "
"

call vundle#end()
filetype plugin indent on
colorscheme default
set number
"hi FoldColumn ctermbg=222222
hi SignColumn ctermbg=222222
" hi CursorLine cterm=NONE ctermbg=237
hi CursorLine cterm=NONE ctermbg=7
" hi Visual ctermbg=239
" hi Search ctermbg=239
hi Visual ctermbg=247
hi Search ctermbg=247

let g:ctrlp_cmd = 'CtrlPBuffer'
let g:syntastic_enable_signs=1
let g:syntastic_html_tidy_ignore_errors = [ '{{', '}}', 'unexpected or duplicate quote mark', 'proprietary attribute', 'trimming' ]
let g:mustache_abbreviations = 1
let g:acp_enableAtStartup = 0

let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3

" vim-go settings start
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
let g:go_bin_path = expand("~/.gotools")
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
" vim-go settings end

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

" set mouse=a
set noequalalways

map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

nnoremap th :tabfirst<CR>
nnoremap tj :tabnext<CR>
nnoremap tk :tabprev<CR>
nnoremap tl :tablast<CR>
nnoremap tt :tabedit<Space>
nnoremap tn :tabnext<Space>
nnoremap tm :tabm<Space>
nnoremap td :tabclose<CR>

let g:esearch#out#win#open = 'new'
let g:UltiSnipsExpandTrigger="<c-j>"

let g:ycm_filetype_blacklist = { 'go': 1 }

autocmd FileType javascript NeoCompleteLock
