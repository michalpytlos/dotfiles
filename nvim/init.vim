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
colorscheme codedark
set number
set relativenumber
" Show line count for files in tree
let g:NERDTreeFileLines = 1

" Enable treesitter syntax highlighting
" "c", "lua", "vim", "vimdoc" and "query" parsers should always be installed
" Neovim bundles its own parsers but they can be incompatible with
" nvim-treesitter; the solution is to always install the required parsers via
" nvim-treesitter https://github.com/nvim-treesitter/nvim-treesitter/issues/3970#issuecomment-1377126359
lua <<EOF
require('nvim-treesitter.configs').setup {
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "python", "bash", "sql", "yaml", "toml", "json", "dockerfile", "markdown", "markdown_inline"},
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
nnoremap <leader>fm :Telescope marks<CR>
nnoremap <leader>fr :Telescope registers<CR>
nnoremap <leader>ft :Telescope tags<CR>
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader>gd :Gvdiffsplit<CR>
" better window navigation
nnoremap <C-h> <C-w><C-h>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
