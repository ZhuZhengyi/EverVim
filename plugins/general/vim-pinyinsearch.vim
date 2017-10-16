
" PinyinSearch {{{
if isdirectory(expand(EverVimBundleDir('vim-PinyinSearch')))
    let g:PinyinSearch_Dict = $HOME.'/.vim/plugged/vim-PinyinSearch/PinyinSearch.dict'
    nnoremap ? :call PinyinSearch()<CR>
    " I suggest using '?' to search Pinyin (since we have 'N', why using ? to
    " search backward)
    nnoremap <Leader>pn :call PinyinNext()<CR>
endif
" }}}
