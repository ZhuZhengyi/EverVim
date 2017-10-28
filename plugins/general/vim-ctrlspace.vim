if isdirectory(expand(EverVimBundleDir("vim-ctrlspace")))
    if exists('g:evervim_use_ctrlspace')
        set nocompatible
        set hidden
        nnoremap <silent><C-p> :CtrlSpace O<CR>
        if executable("ag")
            let g:CtrlSpaceGlobCommand = 'ag -l --nocolor -g ""'
        endif
    endif
endif
