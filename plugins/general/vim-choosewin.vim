
" vim-choosewin {{{
if isdirectory(expand(EverVimBundleDir("vim-choosewin")))
    let g:choosewin_overlay_enable = 1
    nmap <leader>w <Plug>(choosewin)
endif
" }}}
