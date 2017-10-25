
if isdirectory(expand(EverVimBundleDir("vimfiler.vim")))
    let g:vimfiler_restore_alternate_file = 1
    let g:vimfiler_tree_indentation = 1
    let g:vimfiler_tree_leaf_icon = ' '
    let g:vimfiler_tree_opened_icon = '▾'
    let g:vimfiler_tree_closed_icon = '▸'
    let g:vimfiler_file_icon = ' '
    let g:vimfiler_readonly_file_icon = '*'
    let g:vimfiler_marked_file_icon = '√'
    let g:vimfiler_preview_action = 'auto_preview'
    let g:vimfiler_ignore_pattern =
                \ '^\%(\.git\|\.idea\|\.DS_Store\|\.vagrant\|.stversions'
                \ .'\|node_modules\|.*\.pyc\|\.javac\|\.class\|.*\.un\~\)$'

    if has('mac')
        let g:vimfiler_quick_look_command =
                    \ '/Applications//Sublime\ Text.app/Contents/MacOS/Sublime\ Text'
    else
        let g:vimfiler_quick_look_command = 'gloobus-preview'
    endif

    if exists('g:evervim_use_vimfiler')
        let g:vimfiler_as_default_explorer = 1
        call vimfiler#custom#profile('default', 'context', {
                    \   'safe' : 0,
                    \   'explorer' : 0,
                    \   'auto_cd': 1,
                    \   'toggle': 1,
                    \   'explorer_columns': 'type',
                    \   'project': 1,
                    \   'parent': 1,
                    \ })
        autocmd FileType vimfiler nunmap <buffer> <C-l>
        autocmd FileType vimfiler nunmap <buffer> <C-j>
        autocmd FileType vimfiler nmap <silent><buffer><expr> <CR> vimfiler#smart_cursor_map(
                    \ "\<Plug>(vimfiler_expand_tree)",
                    \ "\<Plug>(vimfiler_edit_file)"
                    \ )
        autocmd BufEnter * if (winnr('$') == 1 && &filetype ==# 'vimfiler') |
                    \ q | endif
        autocmd FileType vimfiler call s:vimfilerinit()
        function! s:vimfilerinit()
            set nonumber
            set norelativenumber
        endf
        nmap <silent><F2> :VimFilerExplorer -explorer-columns=type -project -parent<CR>
    endif
endif
