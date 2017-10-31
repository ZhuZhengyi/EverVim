
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
                \ '^\%(\.git\|\.gitignore\|\.idea\|\.tags\|\.DS_Store\|\.vagrant\|.stversions'
                \ .'\|node_modules\|.*\.pyc\|.*\.out\|\.javac\|\.class\|.*\.un\~\|lost+found\)$'

    if has('mac')
        let g:vimfiler_quick_look_command =
                    \ '/Applications//Sublime\ Text.app/Contents/MacOS/Sublime\ Text'
    else
        let g:vimfiler_quick_look_command = 'gloobus-preview'
    endif

    if exists('g:evervim_use_vimfiler')
        let g:vimfiler_as_default_explorer = 1
        "let g:loaded_netrwPlugin = 1
        call vimfiler#custom#profile('default', 'context', {
                    \   'safe' : 0,
                    \   'explorer' : 0,
                    \   'toggle': 1,
                    \   'explorer_columns': 'git',
                    \   'project': 1,
                    \   'parent': 1,
                    \ })
        autocmd FileType vimfiler nunmap <buffer> <C-l>
        autocmd FileType vimfiler nunmap <buffer> <C-j>
        autocmd FileType * call s:vimfiler_init()
        "autocmd FileType vimfiler nmap <silent><buffer><expr> <CR> vimfiler#smart_cursor_map(
                    "\ '\<Plug>(vimfiler_expand_tree)',
                    "\ '\<Plug>(vimfiler_edit_file)'
                    "\ )
        function! s:vimfiler_init()
            if &ft ==# 'vimfiler'
                set nonumber
                set norelativenumber
            else
                set number
                set relativenumber
            endif
        endf

        nmap <silent><F2> :VimFilerExplorer -explorer-columns=git -project -parent<CR>
    endif
endif
