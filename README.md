# Neovim config
Personal neovim config. 
## Add extra packages: 
call plug#begin()
Plug 'lervag/vimtex' " !!!!
Plug 'arcticicestudio/nord-vim' " colour scheme
Plug 'SirVer/ultisnips' " 
Plug 'dense-analysis/ale' " linter
Plug 'KeitaNakamura/tex-conceal.vim', {'for': 'tex'} " easy to configure
Plug 'Valloric/YouCompleteMe' " autocompleter
Plug 'junegunn/vader.vim'
Plug 'Konfekt/FastFold' "code invouwen
Plug 'tmhedberg/SimpylFold'
Plug 'vim-scripts/indentpython.vim'
Plug 'preservim/nerdtree' " file tree
Plug 'tpope/vim-fugitive' " git in vim
Plug 'scrooloose/nerdtree-project-plugin'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tmsvg/pear-tree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } 
Plug 'junegunn/fzf.vim'
Plug 'ycm-core/lsp-examples' 
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' } " typing markodwn
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
call plug#end()
### Neovim equivalents
(vimtex)[https://github.com/lervag/vimtex]
(ultisnips)[https://github.com/SirVer/ultisnips]
(ale)[https://github.com/dense-analysis/ale]
(autocompleter: blink-cmp and dadbod)[https://github.com/saghen/blink.cmp]
(Fastfold: UFO)[https://www.ericapisani.dev/how-to-install-nvim-ufo-in-lazyvim-to-enable-foldable-code-blocks/]
(File tree)[https://github.com/nvim-tree/nvim-tree.lua]
(vim fugitive support: this might not be required when using nvim-tree)[https://github.com/barrettruth/diffs.nvim]
(treehopper)[https://github.com/mfussenegger/nvim-treehopper]
(autoclose brackets like pear-tree)[https://github.com/m4xshen/autoclose.nvim]
(fuzzy finder: not fzf, but telescope)[https://github.com/nvim-telescope/telescope.nvim]
(markdown previewer)[https://github.com/iamcco/markdown-preview.nvim]
(tabular alignment)[https://github.com/nvim-mini/mini.align]
(rendering markdown)[https://github.com/meanderingprogrammer/render-markdown.nvim]
This should be about everything
