set nocompatible

call plug#begin('~/.vim/plugged')

" Plugins 
Plug 'tpope/vim-vividchalk'
Plug 'nanotech/jellybeans.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'scrooloose/syntastic'
Plug 'benmills/vimux'
Plug 'skalnik/vim-vroom'
Plug 'christoomey/vim-tmux-navigator'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }
Plug 'larrylv/ycm-elixir'
Plug 'elmcast/elm-vim'

" Ruby
Plug 'tpope/vim-rails'
Plug 'keith/rspec.vim'

" Elixir and Erlang Plugins
Plug 'elixir-lang/vim-elixir'
Plug 'slashmili/alchemist.vim'
Plug 'vim-erlang/vim-erlang-runtime'
Plug 'vim-erlang/vim-erlang-compiler'
Plug 'vim-erlang/vim-erlang-omnicomplete'
Plug 'vim-erlang/vim-erlang-tags'
Plug 'powerman/vim-plugin-AnsiEsc'

" Snippet support
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'


call plug#end()

syntax on

let g:Powerline_symbols = 'fancy'

filetype plugin indent on

let mapleader = ','

set encoding=utf-8

set showcmd
set showmode

set backspace=indent,eol,start

set complete=.,t

set showmatch
set smarttab
set autoindent
set nrformats-=octal

set incsearch
set hlsearch
set hidden


set wildmenu
set wildmode=list:longest


set ignorecase
set smartcase

set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set directory=$HOME/.vim/tmp//  " Keep swap files in one location
set backupdir=$HOME/.vim/bck//  " Keep swap files in one location

set number
set ruler

set title

set tabstop=2
set shiftwidth=2
set expandtab
set list

set listchars=""
set listchars=tab:\ \
set listchars+=trail:.
set listchars+=extends:>
set listchars+=precedes:<

set laststatus=2

set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{fugitive#statusline()}%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

set t_Co=256
color jellybeans

" Vimux Integration
let g:VimuxUseNearestPane=1
let g:vroom_use_vimux=1

" Alchemist source configuration
let g:alchemist#elixir_erlang_src = "/Users/joel/Code/elixir"

" Mappings
map <leader>s :e ~/.vimrc<cr>
map <leader>nt :NERDTreeToggle<cr>
map <leader>nh :nohls<cr>
map <leader>tb :TagbarToggle<cr>
map <leader>pc :VimuxPromptCommand<cr>
map <leader>eh :ExDoc<cr>
map <leader>b :ls<cr>:buffer 
map <leader>c :Commentary<cr>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

imap {{ {{}}<Esc>hi

set splitbelow
set splitright

let g:UltiSnips = {}

let g:UltiSnips.snipmate_ft_filter = {
            \ 'default' : {'filetypes': ["FILETYPE"] },
            \ 'ruby'    : {'filetypes': ["ruby", "ruby-rails", "ruby-1.9"] },}

" Ultisnips and YCM compatibility
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"


let g:syntastic_mode_map={ 'mode': 'active',
                     \ 'active_filetypes': [],
                     \ 'passive_filetypes': ['html', 'eruby'] }

autocmd FileType css  setlocal foldmethod=indent shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal foldmethod=syntax shiftwidth=2 tabstop=2

" Ignored files
let g:ctrlp_custom_ignore = '\v[\/](.git|.hg|.svn|node_modules|log|tmp|_build|deps|elm-stuff)$'
