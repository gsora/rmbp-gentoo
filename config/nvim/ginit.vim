" In ginit.vim
if exists('g:GuiLoaded')
  set hidden
  let g:gonvim_draw_statusline = 0
  GuiLinespace 1
  GuiFont Iosevka :h11
  nnoremap <Leader>zo :GonvimFuzzyBLines<CR>
  nnoremap <Leader>zb :GonvimFuzzyBuffers<CR>
  nnoremap <Leader>zs :GonvimFuzzyAg<CR>
  nnoremap <Leader>zf :GonvimFuzzyFiles<CR>
endif
