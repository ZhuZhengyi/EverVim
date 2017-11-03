
" yankring {{{
if isdirectory(expand(EverVimBundleDir("YankRing.vim")))
    let g:yankring_history_dir = $HOME.'/.vim/'
    let g:yankring_history_file = '.yankring_history'
    let g:yankring_enabled = 0
    let g:yankring_clipboard_monitor=1
    let g:yankring_paste_v_bkey = ''
    let g:yankring_paste_v_akey = ''
    "<leader>b选择上一个复制的文本
    "let g:yankring_replace_n_pkey = '<Leader>b'
    "<leader>y显示yankring中的内容
    nmap <Leader>y :YRShow<CR>
endif
" }}}
