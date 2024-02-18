call plug#begin()

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tomasiser/vim-code-dark'
Plug 'folke/zen-mode.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' }
Plug 'preservim/nerdtree'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate', 'tag': 'v0.7.2'}


call plug#end()

" Settings
syntax enable
colorscheme codedark
set number
set relativenumber
" Show line count for files in tree
let g:NERDTreeFileLines = 1
" Enable treesitter syntax highlighting
lua <<EOF
require('nvim-treesitter.configs').setup {
  ensure_installed = { "python", "bash", "sql", "yaml", "toml", "json", "dockerfile"},
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
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <leader>gd :Gvdiffsplit<CR>
