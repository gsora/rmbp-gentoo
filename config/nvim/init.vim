" numbers
set number

" mouse
set mouse=a

" true colors
set termguicolors

" clipboard
set clipboard+=unnamedplus

" vim-plug
call plug#begin('~/.vim/plugged')

Plug 'kristijanhusak/vim-hybrid-material'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dzhou121/gonvim-fuzzy'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'Shougo/denite.nvim'
Plug 'Shougo/echodoc.vim'
Plug 'equalsraf/neovim-gui-shim'
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'godlygeek/tabular'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'xolox/vim-misc'
Plug 'benekastah/neomake'
Plug 'Raimondi/delimitMate'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'baines/vim-colorscheme-thaumaturge'
Plug 'sebdah/vim-delve'

call plug#end()

" colorscheme
set background=dark
colorscheme hybrid_material
map <Leader>bg :let &background = ( &background == "dark"? "light" : "dark" )<CR>

" follow opened file path
autocmd BufEnter * lcd %:p:h

let $PATH .= ':/home/gsora/go/bin'

" airline
let g:airline_theme = "hybrid"

" deoplete
let g:deoplete#enable_at_startup = 1

" code folding
set foldmethod=syntax
set foldnestmax=10
set nofoldenable
set foldlevel=0

" speed up syntax highlighting
set nocursorcolumn
set nocursorline
syntax sync minlines=256
set synmaxcol=300
set re=1
nnoremap <space> za

" Go
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4 
let g:go_metalinter_autosave = 1
let g:go_fmt_experimental = 1
let g:go_echo_go_info = 0
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_metalinter_deadline = "5s"
let g:go_fmt_autosave = 1
let g:go_fold_enable = ['block', 'import', 'varconst']
let g:go_fmt_command = "goimports"
let g:deoplete#sources#go#gocode_binary = '/home/gsora/go/bin/gocode'
let s:tlist_def_go_settings = 'go;g:enum;s:struct;u:union;t:type;' .
                           \ 'v:variable;f:function'
let g:netrw_liststyle = 3
nnoremap <Leader><Leader> :TagbarOpen<CR><C-W>l<C-W>s:e .<CR><C-W>h:let g:netrw_chgwin=winnr()<CR><C-W>l

" echodoc
let g:echodoc_enable_at_startup = 1
set completeopt-=preview
set noshowmode

" tagbar
nmap <C-l> :TagbarToggle<CR>
autocmd VimEnter * nested :call tagbar#autoopen(1)
autocmd FileType * nested :call tagbar#autoopen(0)
" gitgutter
let g:gitgutter_max_signs=10000

" neomake
call neomake#configure#automake('nw', 750)

" nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
