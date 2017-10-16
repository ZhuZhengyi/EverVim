
" vimux {{{
if isdirectory(expand(EverVimBundleDir("vimux")))
    let g:VimuxHeight = '30'
    let g:VimuxOrientation = 'v'
    let g:VimuxUseNearestPane = 0

    nmap <leader>vp :VimuxPromptCommand<cr>
    nmap <leader>vl :VimuxRunLastCommand<cr>
    nmap <leader>vq :VimuxCloseRunner<cr>
    nmap <leader>vx :VimuxInterruptRunner<cr>
endif
" }}}
