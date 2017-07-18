" numbers
set number

" mouse
set mouse=a

" clipboard
set clipboard+=unnamedplus

" vim-plug
call plug#begin('~/.vim/plugged')

" spell check on markdown
au BufRead *.md setlocal spell
au BufRead *.markdown setlocal spell

Plug 'kristijanhusak/vim-hybrid-material'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'godlygeek/tabular'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'xolox/vim-misc'
Plug 'severin-lemaignan/vim-minimap'

call plug#end()

" colorscheme
set background=dark
colorscheme hybrid_material

map <Leader>bg :let &background = ( &background == "dark"? "light" : "dark" )<CR>

" deoplete
let g:deoplete#enable_at_startup = 1

" ctrlpvim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = "hybrid"

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
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_metalinter_deadline = "5s"
let g:go_fmt_autosave = 1
let g:go_fmt_command = "goimports"
let s:tlist_def_go_settings = 'go;g:enum;s:struct;u:union;t:type;' .
                           \ 'v:variable;f:function'
let g:netrw_liststyle = 3
nnoremap <Leader><Leader> :TagbarOpen<CR><C-W>l<C-W>s:e .<CR><C-W>h:let g:netrw_chgwin=winnr()<CR><C-W>l
