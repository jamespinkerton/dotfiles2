let vim_folder = has('nvim') ? "~/.config/nvim/" : "~/.vim/"
if empty(glob(vim_folder . "/autoload/plug.vim"))
    execute "! curl -fLo " . vim_folder . "/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

if has('nvim')
    set inccommand=split
    " set termguicolors
endif

call plug#begin(vim_folder . "/plugged")
Plug 'flazz/vim-colorschemes'
Plug 'tomtom/tcomment_vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    let $FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*"'
    map <C-p> :FZF<CR>
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle'}
    map <C-n> :NERDTreeToggle<CR>
    let g:NERDTreeHijackNetrw=1
Plug 'vim-airline/vim-airline'
    set encoding=utf-8
    set laststatus=2
    set ttimeoutlen=50
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#show_buffers = 0
    let g:airline#extensions#tabline#show_tab_type = 0
    let g:airline#extensions#tabline#tab_min_count = 2
Plug 'vim-airline/vim-airline-themes'
    let g:airline_theme='murmur'
Plug 'rust-lang/rust.vim'
Plug 'tpope/vim-fugitive'
Plug 'christoomey/vim-tmux-navigator'
Plug 'airblade/vim-gitgutter'
Plug 'ervandew/supertab'
    let g:SuperTabDefaultCompletionType = "<C-n>"
Plug 'metakirby5/codi.vim'
call plug#end()

set noshowmode
syntax on
set t_Co=256
set nocompatible
set hlsearch
set backspace=indent,eol,start
set ruler
set wildmenu
set autoindent
set smarttab
filetype indent plugin on
set notimeout ttimeout ttimeoutlen=200
set showcmd
inoremap <C-z> <esc><C-z>
set background=dark
set ignorecase smartcase
set visualbell t_vb=
set nostartofline
set hidden
set confirm
set expandtab tabstop=4 shiftwidth=4
autocmd Filetype c setlocal tabstop=2 shiftwidth=2
autocmd Filetype cpp setlocal tabstop=2 shiftwidth=2
autocmd Filetype h setlocal tabstop=2 shiftwidth=2
autocmd Filetype hpp setlocal tabstop=2 shiftwidth=2
filetype plugin on
" so ~/.config/nvim/opti.vim
" set clipboard+=unnamed
" highlight ExtraWhitespace ctermbg=red guibg=red
" match ExtraWhitespace /\s\+$\|\t/
