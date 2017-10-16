
" easymotion {{{
if isdirectory(expand(EverVimBundleDir('vim-easymotion')))
    let g:EasyMotion_smartcase = 1          " 忽略大小写
    let g:EasyMotion_cursor_highlight = 1
    " 更改快捷键
    map f <Plug>(easymotion-prefix)
    map ff <Plug>(easymotion-s)
    map fs <Plug>(easymotion-f)
    map fl <Plug>(easymotion-lineforward)
    map fj <Plug>(easymotion-j)
    map fk <Plug>(easymotion-k)
    map fh <Plug>(easymotion-linebackward)
endif
" }}}
