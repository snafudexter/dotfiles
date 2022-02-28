call plug#begin()

" GUI enhancements
Plug 'itchyny/lightline.vim'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'hrsh7th/nvim-cmp'
Plug 'prettier/vim-prettier', { 'do': 'npm install --frozen-lockfile --production' }
" For vsnip users.
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'tami5/lspsaga.nvim'
Plug 'morhetz/gruvbox'

" fuzzy finder
Plug 'airblade/vim-rooter'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'


" Tree sitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'p00f/nvim-ts-rainbow'


call plug#end()

autocmd vimenter * ++nested colorscheme gruvbox

lua require('lsp-saga')
lua require('lsp')
lua require('tree-sitter')

let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0

let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ }

set nocompatible
set number
syntax on
set encoding=utf-8
set title
set autoindent
filetype plugin indent on
set shiftwidth=4
set tabstop=4
set hlsearch 
set incsearch
set expandtab
