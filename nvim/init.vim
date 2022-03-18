call plug#begin()

Plug 'nvim-lua/plenary.nvim'

" GUI enhancements
Plug 'itchyny/lightline.vim'
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'tamago324/nlsp-settings.nvim'
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'ray-x/lsp_signature.nvim'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'hrsh7th/cmp-emoji'
Plug 'hrsh7th/nvim-cmp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

Plug 'prettier/vim-prettier', { 'do': 'npm install --frozen-lockfile --production' }



" fuzzy finder
Plug 'airblade/vim-rooter'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'


" Tree sitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'p00f/nvim-ts-rainbow'

" Spaceduck colorscheme
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }

call plug#end()

if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
endif

colorscheme spaceduck

lua require('lsp')
lua require('cmp-configs')
lua require('tree-sitter')
lua require('options')
lua require('keymaps')

let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0

let g:lightline = {
      \ 'colorscheme': 'spaceduck',
      \ }


