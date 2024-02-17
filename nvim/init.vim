call plug#begin()

Plug 'tpope/vim-commentary'
Plug 'tomasiser/vim-code-dark'
Plug 'folke/zen-mode.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' }

call plug#end()

" Settings
syntax enable
colorscheme codedark
set number
set relativenumber

" Key mappings
nnoremap <C-_> :Commentary<CR>  " <C-_> is Ctrl + /
vnoremap <C-_> :Commentary<CR>
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
