" Plugins
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'sheerun/vim-polyglot'
Plug 'Raimondi/delimitMate'
Plug 'arcticicestudio/nord-vim'
Plug 'autozimu/LanguageClient-neovim', {'branch': 'next', 'do': 'bash install.sh'}
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
call plug#end()

" Editing
"" Set tab to 2 spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Line numbers
"" Display current line's number normally
set number
"" Display the rest using relative numbers
set relativenumber

" Colors
syntax on
"" Enable true colors
set termguicolors
colorscheme nord

" Auto-completion
let g:deoplete#enable_at_startup=1
set signcolumn=yes
"" Select completion using tab and s-tab
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Airline
"" Enable powerline fonts
let g:airline_powerline_fonts=1

" Language server
let g:LanguageClient_serverCommands = {
  \ 'c':      ['clangd', '--background-index'],
  \ 'cpp':    ['clangd', '--background-index'],
  \ 'go':     ['gopls'],
  \ 'sh':     ['bash-language-server', 'start'],
  \ }

" Misc
"" Format Go files on save
autocmd BufWritePre *.go :call LanguageClient#textDocument_formatting_sync()
"" *.h is a C header file, you dummy!
autocmd BufRead,BufNewFile *.h set filetype=c
