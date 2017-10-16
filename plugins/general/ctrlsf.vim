if isdirectory(expand(EverVimBundleDir('ctrlsf.vim')))
    let g:ctrlsf_auto_close     = 1
    let g:ctrlsf_case_sensitive = 'no'
    let g:ctrlsf_context        = '-B 1 -A 1'
    let g:ctrlsf_default_root   = 'project'
    let g:ctrlsf_position       = 'right'
    let g:ctrlsf_ignore_dir     = ['bower_components', 'docs', 'vendor', 'npm_modules', 'dist', 'runtime', 'tmp', 'build']
    let g:ctrlsf_regex_pattern  = 1
    nmap <C-F>f <Plug>CtrlSFPrompt
    vmap <C-F>f <Plug>CtrlSFVwordPath<CR>
    vmap <C-F>F <Plug>CtrlSFVwordExec
    nmap     <C-F>n <Plug>CtrlSFCwordPath
    nmap     <C-F>p <Plug>CtrlSFPwordPath
    nnoremap <C-F>o :CtrlSFOpen<CR>
    nnoremap <C-F>t :CtrlSFToggle<CR>
    inoremap <C-F>t <Esc>:CtrlSFToggle<CR>
    nnoremap <leader>sf :CtrlSF<space>
    nnoremap <leader>st :CtrlSFToggle<CR>
endif
