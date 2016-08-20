if &compatible
  set nocompatible
end

execute pathogen#infect()
syntax on
filetype plugin indent on

filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
cal vundle#begin()

" Let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

"RUBY
"Plugin 'thoughtbot/vim-rspec'
"Plugin 'christoomey/vim-run-interactive'
"Plugin 'kchmck/vim-coffee-script'
"Plugin 'tpope/vim-bundler' "wraps bundle con :Bundle
"Plugin 'tpope/vim-endwise' "autocomplete def if etc
"Plugin 'tpope/vim-rails' "Rails shortcut
"Plugin 'vim-ruby/vim-ruby'

"Color Scheme
" Like Mac xcode default
"Plugin 'cohlin/vim-colorschemes'

Plugin 'ctrlpvim/ctrlp.vim'
"Plugin 'pbrisbin/vim-mkdir' "crei una dir con :e
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-eunuch' "Vim sugar like :Move, :Rename etc
"Plugin 'tpope/vim-fugitive' "Wrap all Git commang
Plugin 'tpope/vim-repeat' "Il punto ripete l'ultima azione
Plugin 'tpope/vim-unimpaired' "pair the [{(
Plugin 'tpope/vim-surround'
"Plugin 'jtratner/vim-flavored-markdown' "Riconosce MD come ``` ```
"Plugin 'vim-scripts/ctags.vim'
Plugin 'vim-scripts/matchit.zip'
Plugin 'morhetz/gruvbox' "retro theme that I am using
Plugin 'vim-scripts/tComment'
" Auto align
Plugin 'vim-scripts/vimball'
Plugin 'vim-scripts/Align'
Plugin 'vim-scripts/AutoAlign'

" Snipmate
"Plugin 'MarcWeber/vim-addon-mw-utils'
"Plugin 'tomtom/tlib_vim'
"Plugin 'garbas/vim-snipmate'
"Plugin 'honza/vim-snippets'

"Plugin 'pangloss/vim-javascript'

Plugin 'rking/ag.vim'

" Nice status bar
Plugin 'bling/vim-airline'

" Plugin 'roman/golden-ratio'
Plugin 'scrooloose/nerdtree'
Plugin 'xuyuanp/nerdtree-git-plugin'
Plugin 'scrooloose/nerdcommenter'

" Tmux
" Plugin 'pivotal/tmux-config'
"Bundle 'roman/golden-ratio'
"Plugin 'danro/rename.vim'
"Plugin 'Lokaltog/vim-easymotion'
"Plugin 'yssl/QFEnter'
"Plugin 'elzr/vim-json'


Plugin 'sjl/vitality.vim' "Change Cursor
"Plugin 'Chiel92/vim-autoformat'
Plugin 'ntpeters/vim-better-whitespace'
"Plugin 'jeffkreeftmeijer/vim-numbertoggle'
"Plugin 'mustache/vim-mustache-handlebars'

call vundle#end()
filetype on


" Change <Leader>
let mapleader = ","


set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set autowrite     " Automatically :write before running commands
set laststatus=2  " Always shows the status line at the bottom

"set viminfo=
" Make it obvious where 80 characters is
set textwidth=80
"set colorcolumn=+1

"sm:    flashes matching brackets or parentheses
set showmatch

" Softtabs, 2 spaces
"set tabstop=2
"set shiftwidth=2
"set shiftround
"set expandtab



" Enable tab complete for commands.
" first tab shows all matches. next tab starts cycling through the matches
set wildmenu


" Easily spell check
" http://vimcasts.org/episodes/spell-checking/
nmap <silent> <leader>s :set spell!<CR>
set spelllang=en_gb
"/*[s Goes forward*/
"/*z= Gives the list of words to replace*/

" Enable spellchecking for Markdown
autocmd FileType markdown setlocal spell


"clipboard per copiare da vim ed incollare altrove:
set clipboard=unnamed


" Move between splits
"nnoremap <S-Tab> <C-j>W
"nnoremap <Tab> <C-W><C-W>


" Nerdtree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.git','\.DS_Store','\.pdf', '.beam']
"let g:NERDTreeWinSize = 4
let NERDTreeHighlightCursorline = 1

" JJ escape
inoremap jj <ESC>:wa<CR>

"open vimrc
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

" Indentation
noremap <Leader>i gg=G

" Autoformat
"map <Leader>f :Autoformat<CR>

" such very magic
:nnoremap / /\v
:cnoremap %s/ %s/\v

"Move between windows
nnoremap <Tab> <C-W><C-W>
" numbering
:set relativenumber

"colorscheme hybrid
colorscheme gruvbox
"colorscheme dark-atom-256
"syntax enable
 set background=dark
"let g:solarized_termcolors=256
"colorscheme solarized
"colorscheme lucius
"set background=light

set backspace=2   " Backspace deletes like most programs in insert mode
set nowritebackup

nnoremap <space> za
"XCODE THEME
" Airline theme
"'let g:airline_theme = 'edocx"
" Vim colorscheme
"colorscheme xcode-default

" Setting dark mode
"set background=dark

"Cursor change
":autocmd InsertEnter * set cul
":autocmd InsertLeave * set nocul
" first, enable status line always
"set laststatus=2

" now set it up to change the status line based on mode
"if version >= 700
  "au InsertEnter * hi StatusLine term=reverse ctermbg=5 gui=undercurl guisp=Magenta
  "au InsertLeave * hi StatusLine term=reverse ctermfg=0 ctermbg=2 gui=bold,reverse
"endif
set runtimepath+=~/.vim/bundle/jshint2.vim/

"PYTHON
" UTF-8
set encoding=utf-8
" python pep8
"au BufNewFile,BufRead *.py set tabstop=4
"au BufNewFile,BufRead *.py set softtabstop=4
"au BufNewFile,BufRead *.py set shiftwidth=4
"au BufNewFile,BufRead *.py set textwidth=79
"au BufNewFile,BufRead *.py set expandtab
"au BufNewFile,BufRead *.py set autoindent
"au BufNewFile,BufRead *.py set fileformat=unix

""JAVASCRIPT & HTML
"au BufNewFile,BufRead *.js, *.html, *.css set tabstop=2
"au BufNewFile,BufRead *.js, *.html, *.css set softtabstop=2
"au BufNewFile,BufRead *.js, *.html, *.css set shiftwidth=2


