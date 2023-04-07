call plug#begin()
    Plug 'arcticicestudio/nord-vim'
    Plug 'preservim/nerdtree'
    Plug 'mhartington/oceanic-next'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'neoclide/coc-prettier'
    Plug 'neoclide/coc-tsserver'
    Plug 'neoclide/coc-json'
    Plug 'neoclide/coc-html'
    Plug 'neoclide/coc-css'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
call plug#end()
                                    
syntax enable
colorscheme OceanicNext                                 
                                
set number
set autoindent                                 
set tabstop=4                                 
set shiftwidth=4                                 
set expandtab
set smarttab                                 
set softtabstop=8
set cursorline
set relativenumber                                 
set termguicolors
                                
nnoremap <C-d> :NERDTreeToggle<CR>
nnoremap <C-s> :NERDTreeFind<CR>
nnoremap <C-_> :FZF<CR>
autocmd VimEnter * NERDTree | wincmd p
let g:rg_command = 'rg --vimgrep --no-ignore-messages'
" use <tab> for trigger completion and navigate to the next complete item
command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument
