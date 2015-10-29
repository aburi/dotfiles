" Execute Pathogen-installed plugins
execute pathogen#infect()

""
" GENERAL
""

" enable syntax highlighting
syntax on

" set backspace to work like most apps
set backspace=2

" enhance cli completion
set wildmenu

" turn on ruler
set ruler

" highlight current line
set cursorline

" turn on auto indentation
set autoindent

" allow use of mouse
set mouse=a

" disable backups
set nobackup

" add line numbers
set number

" always display status (useful for vim-airline)
set laststatus=2

" hide abandoned buffers
set hid

" show matching brackets
set showmatch
set mat=2

" highlight search results
set hlsearch

" trim trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

" theme settings
set background=dark
colorscheme base16-ocean
set t_Co=256

""
" INDENTATION
""

" use tabs, indent two (not four)
set noexpandtab
set tabstop=2
set shiftwidth=2
set smarttab

""
" FOLDING
""

" fold by indentation
set foldmethod=indent

" set deepest fold to 10 levels
set foldnestmax=10

" don't fold code by default
set nofoldenable

" set fold level to 1
set foldlevel=1

""
" PLUGIN SETTINGS
""

" MULTIPLE SELECTION
" use ctrl+v to select next match (similar to Sublime's CMD+D)
let g:multi_cursor_next_key='<C-v>'

" EMMET
" expand items with tab
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

" go to next edit with ctrl+n
let g:user_emmet_next_key='<C-n>'