"==================================================================================================
" init.vim setting for NeoVim
" 
" Owner: Maxime Wabartha
"==================================================================================================

"==================================================================================================
" For installation, do the following steps:
"
" 1. Install NeoVim. There are several advantages relative to Vim,
" 	including fast autocompletion, true-color support, fast installation,
" 	and so on.	
" $ brew install neovim # Or, 'sudo apt install neovim' in Ubuntu
" $ pip install neovim 
"
" 2. Install Vim-Plug.
" $ curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"
" 3. Copy this file.
" $ cp /path/to/this/file/ ~/.config/nvim/init.vim 
"
" 4. Install Plugins.
" $ nvim 
" Then, :PlugInstall
"==================================================================================================

"==================================================================================================
" Settings & Plugins
" - Spefication for the plugin directory.
call plug#begin('~/.local/share/nvim/plugged')
Plug 'phanviet/vim-monokai-pro'
" Plug 'tpope/vim-fugitive' "Useful if I have to merge files a lot, and use git a lot. Not my usecase right now.
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'dense-analysis/ale'  " Language server protocol for vim; nice but insanely slow
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}
Plug 'kassio/neoterm'
Plug 'tmsvg/pear-tree'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'vimwiki/vimwiki'
" Plug 'vim-scripts/google_prettify.vim'
" Plug 'Raimondi/delimitMate'
" Plug 'tpope/vim-dispatch'
" Plug 'scrooloose/nerdcommenter' " Plugin to easily comment lines
" Plug 'ludovicchabant/vim-gutentags' " Add tags to neovim. Pretty important ...
" Plug 'majutsushi/tagbar' " Adds a tagbar window on the right to jump to the declaration of functions
" Plug 'nvie/vim-flake8'
" Plug 'Yggdroot/indentline'  " Better visual guide
" Plug 'honza/vim-snippets'  " Allow snippets
" Plug 'SirVer/ultisnips'  " Allow snippets
" Plug 'vim-scripts/L8' "I don't know the purpose of this one
" Plug 'scrooloose/nerdtree'
" Plug 'mattboehm/vim-unstack'
" Plug 'vim-scripts/vim-auto-save'
"
" Initialize plugin system
call plug#end()

" - Set a default mapleader key
" nnoremap <SPACE> <Nop>
let mapleader = " "  " We use space
" - Visualize line number
set nu 

" - Enable mouse in all modes
set mouse=a

" - Syntax highlighting
syntax on

" - Use Sublime theme.
set termguicolors
colorscheme monokai_pro 

" - Navigations (Normal mode)
nnoremap <S-h> <Home>
nnoremap <S-l> <End>
nnoremap <S-j> 15j
nnoremap <S-k> 15k
" nnoremap <C-l> w
" nnoremap <C-h> b
" nnoremap <Up> <Nop>
" nnoremap <Down> <Nop>
" nnoremap <Left> <Nop>
" nnoremap <Right> <Nop> 
"
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" - Navigations (Insert mode)
" inoremap <C-j> <Down>
" inoremap <C-k> <Up>
" inoremap <C-h> <Left>
" inoremap <C-l> <Right>
" inoremap <S-C-j> <Down><Down><Down><Down><Down><Down><Down><Down><Down><Down>
" inoremap <S-C-k> <Up><Up><Up><Up><Up><Up><Up><Up><Up><Up>
" inoremap <C-H> <S-Left>
" inoremap <C-L> <S-Right>
inoremap <Down> <Nop>
inoremap <Up> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

" - Navigations (Visual mode)
vnoremap <S-j> <PageDown> 
vnoremap <S-k> <PageUp>
vnoremap <S-h> <Home>
vnoremap <S-l> <End>
" vnoremap <C-j> 15j
" vnoremap <C-k> 15k
" vnoremap <C-l> w
" vnoremap <C-h> b

" - Change buffer
nnoremap tl :bnext<CR>
nnoremap th :bprevious<CR>

" - Tab setting 
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set textwidth=200
set autoindent
set fileformat=unix
set showcmd  " - Show command in the bottom right corner
set splitbelow  " Better split rules compared to default nvim
set splitright


" - Python Highlighting
let python_highlight_all=1


" - Execution key setting
autocmd BufRead *.py nnoremap <F5> :sv<CR> :resize 25<CR> :term python %<CR> i 
autocmd BufRead *.py nnoremap <F6> :q<CR><CR>
autocmd BufRead *.sh nnoremap <F5> :sv<CR> :resize 25<CR> :term bash %<CR> i
autocmd BufRead *.sh nnoremap <F6> :q<CR><CR>
tnoremap <Esc> <C-\><C-n> 
" 
let g:airline#extensions#tabline#enabled=1 " turn on buffer list
let g:airline_theme='hybrid'
set laststatus=2 " turn on bottom bar

" - FZF shortcuts
nnoremap <silent> <leader>f :FZF<CR>
nnoremap <silent> <leader>F :FZF ~<CR>

" autocmd BufEnter * lcd %:p:h
" nnoremap <C-f> :NERDTree<CR>
" let NERDTreeShowLineNumbers=1
" let g:NERDTreeWinPos="right"
" let NERDTreeQuitOnOpen=1
" let NERDTreeShowHidden=1
" 
" vnoremap <F10> "ayy :UnstackFromText @a<CR>
" nnoremap <F10> "ayy :UnstackFromText @a<CR>
" nnoremap <F11> :bw<CR>
" 
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<tab>"
" let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
" let g:UltiSnipsEditSplit="vertical"
" 
" let g:ale_python_pylint_options = '--load-plugins pylint_django'
" let g:ale_python_flake8_options = '--ignore E501'
" 
" let g:auto_save = 1  " enable AutoSave on Vim startup
" let g:auto_save_no_updatetime = 1  " do not change the 'updatetime' option
" let g:auto_save_in_insert_mode = 0  " do not save while in insert mode
" 
" 
" set tags=tags
" " IMPORTANT: You must add `--python-kinds=-iv` to `~/.ctags`.
" "            By doing so , ctags do not capture lines with import in python files. 
" 
" let g:jedi#completions_enabled = 0  " Disable this since we use `deoplete`.
" let g:jedi#use_splits_not_buffers = "right"
" nnoremap <C-CR> <S-k>
" 
" " Multiple Plugins for NCM settings
" autocmd BufEnter * call ncm2#enable_for_buffer()
" set completeopt=menu,noinsert,menuone
" set shortmess+=c
" inoremap <c-c> <ESC>
" inoremap <expr> <CR> (pumvisible() ? "\<C-y>" : "\<CR>")
" au User Ncm2Plugin call ncm2#register_source({
"         \ 'name' : 'css',
"         \ 'priority': 9,
"         \ 'subscope_enable': 1,
"         \ 'scope': ['css','scss'],
"         \ 'mark': 'css',
"         \ 'word_pattern': '[\w\-]+',
"         \ 'complete_pattern': ':\s*',
"         \ 'on_complete': ['ncm2#on_complete#omni', 'csscomplete#CompleteCSS'],
"         \ })
" " 
" " " Multiple Plugins for deoplete.vim
" let g:deoplete#enable_at_startup = 0

" IMPORTANT: `pip install jedi` is required.

" Additional parts to solve errors.
"
" - This line is due to the initialization with REPLACE mode...
"   I cannot figure out the reason, but the problem is simply solved by using this line.
nnoremap <esc>^[ <esc>^[
set scrolloff=4 " Ensures that there is at least 4 lines between the bottom / top of the file and the cursor

" Disable python2 support
" let g:loaded_python_provider = 1
" nnoremap <F8> :TagbarOpenAutoClose <CR>
" vnoremap <F8> :TagbarOpenAutoClose <CR>

set colorcolumn=100

" VimWiki
set nocompatible  " required for vimwiki
filetype plugin on

" Others
nnoremap <F3> :noh<CR>
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"

let g:lsp_settings = {
\   'pyls-all': {
\     'workspace_config': {
\       'pyls': {
\         'configurationSources': ['pycodestyle'],
\         'plugins': {
\           'pycodestyle': {
\             'enabled': v:true,
\             'ignore': ['E501']
\           },
\         }
\       }
\     }
\   },
\}
