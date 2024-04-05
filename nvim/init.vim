" Plugins
call plug#begin()

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'folke/zen-mode.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'preservim/nerdtree'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" colorschemes
Plug 'EdenEast/nightfox.nvim'
Plug 'tomasiser/vim-code-dark'
" lsp
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'

call plug#end()

" Settings
syntax enable
colorscheme codedark
set number
set relativenumber
" Recursive file search
set path+=**
" Show line count for files in tree
let g:NERDTreeFileLines = 1
" Characters to use in list mode
set listchars=tab:>-,lead:.,trail:.,eol:$,nbsp:+

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
" Windows clipboard from WSL
vnoremap <leader>y :w !clip.exe<CR><CR>
nnoremap <leader>p :r !powershell.exe -c Get-Clipboard<CR>
" Diagnostics
lua << EOF
vim.keymap.set('n', '<leader>df', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>dl', vim.diagnostic.setloclist)
EOF

" Lua configs
lua require('treesitter')
lua require('lsp')
