call plug#begin()

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'folke/zen-mode.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'preservim/nerdtree'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" colorschemes
Plug 'EdenEast/nightfox.nvim'
Plug 'tomasiser/vim-code-dark'
call plug#end()

" Settings
syntax enable
colorscheme nightfox
set number
set relativenumber
" Show line count for files in tree
let g:NERDTreeFileLines = 1
" Enable treesitter syntax highlighting
lua <<EOF
require('nvim-treesitter.configs').setup {
  ensure_installed = { "python", "bash", "sql", "yaml", "toml", "json", "dockerfile", "markdown", "markdown_inline"},
  highlight = { enable = true },
  indent = { enable = true }
}
EOF

" Key mappings
" Disable space in normal mode
nnoremap <SPACE> <Nop>
" Set leader to space
let mapleader=" "
" Mappings
nnoremap <C-_> :Commentary<CR>  " <C-_> is Ctrl + /
vnoremap <C-_> :Commentary<CR>
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap <leader>ff :Telescope find_files<CR>
nnoremap <leader>fg :Telescope live_grep<CR>
nnoremap <leader>fb :Telescope buffers<CR>
nnoremap <leader>t :NERDTreeFocus<CR>
nnoremap <leader>gd :Gvdiffsplit<CR>
