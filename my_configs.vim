" ===============================
" Custom Vim Config (my_configs.vim)
" ===============================

" === Visual Enhancements ===
set number                " Show line numbers
set relativenumber        " Show relative line numbers
set cursorline            " Highlight current line
set colorcolumn=80        " Highlight column 80
set ruler                 " Show cursor position
set mouse=a               " Enable mouse support

" === Clipboard and File Handling ===
set clipboard=unnamedplus " Use system clipboard
set autoread              " Auto reload changed files
autocmd FocusGained,BufEnter * checktime

" === Search Settings ===
set hlsearch              " Highlight matches
set incsearch             " Show matches as you type
set ignorecase            " Ignore case in searches...
set smartcase             " ...unless uppercase letters used

" === Indentation ===
set tabstop=4             " 4 spaces per tab
set shiftwidth=4          " Indent by 4 spaces
set expandtab             " Convert tabs to spaces
set autoindent            " Copy indent from current line
set smartindent           " Auto smart indent
set backspace=indent,eol,start

" === Undo and Backup ===
set undofile              " Persistent undo

" === Status Line ===
set laststatus=2
set statusline=%f\ %y\ [%{&ff}]\ %m%r\ %=Ln:%l,%c\ [%p%%]

" === Keymaps ===
inoremap jk <Esc>         " Fast escape
inoremap kj <Esc>

nnoremap <C-h> <C-w>h     " Window nav
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" === Cursor position restore ===
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   execute "normal! g`\"" |
  \ endif

" === Set working dir to current file ===
autocmd BufEnter * silent! lcd %:p:h

" === Transparency (Terminal) ===
autocmd ColorScheme * hi Normal      ctermbg=none guibg=none
autocmd ColorScheme * hi NormalNC    ctermbg=none guibg=none
autocmd ColorScheme * hi EndOfBuffer ctermbg=none guibg=none
autocmd ColorScheme * hi LineNr      ctermbg=none guibg=none
autocmd ColorScheme * hi SignColumn  ctermbg=none guibg=none

" Optional: Set your preferred colorscheme
colorscheme desert
