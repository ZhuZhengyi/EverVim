if isdirectory(expand(EverVimBundleDir("nerdtree")))
    let g:NERDShutUp=1
    " map <C-e> <plug>NERDTreeTabsToggle<CR>
    noremap <F2> :NERDTreeToggle<CR>
    noremap <leader>nf :NERDTreeFind<CR>
    nnoremap <leader>nt :NERDTreeToggle<CR>

    let g:NERDTreeHijackNetrw = 1
    let g:NERDTreeMinimalUI = 0
    let g:NERDTreeWinSize=30
    let g:NERDTreeShowBookmarks=1
    let g:NERDTreeChDirMode=2
    let g:NERDTreeQuitOnOpen=0
    let g:NERDTreeMouseMode=2
    let g:NERDTreeShowHidden=1
    let g:NERDTreeKeepTreeInNewTab=1
    let g:NERDTreeMapOpenRecursively='<C-O>'
    let g:NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']

    if isdirectory(expand(EverVimBundleDir("nerdtree-git-plugin")))
    let g:NERDTreeShowIgnoredStatus = 1

    endif
    let g:nerdtree_tabs_open_on_gui_startup=0
    if !exists('g:evervim_nerdtree_tabs_sync')
        let g:nerdtree_tabs_open_on_new_tab=0
        let g:nerdtree_tabs_synchronize_view=0

    endif
endif
