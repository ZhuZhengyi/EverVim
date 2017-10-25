
" unite {{{
if isdirectory(expand(EverVimBundleDir('unite.vim')))
    function! s:on_unite_source()
        call unite#filters#matcher_default#use(['matcher_fuzzy'])
        call unite#filters#sorter_default#use(['sorter_rank'])
        call unite#custom#profile('default', 'context', { 'start_insert': 1 })
    endfunction
    if executable('ag')
        let g:unite_source_grep_command = 'ag'
        let g:unite_source_grep_default_opts = '' .
                    \ '-i --vimgrep --hidden --column' .
                    \ '--ignore ".hg"' .
                    \ '--ignore ".svn"' .
                    \ '--ignore ".git"' .
                    \ '--ignore ".bzr"' .
                    \ '--ignore "build"' .
                    \ '--ignore "log"' .
                    \ '--ignore "vendor"' .
                    \ '--ignore "node_modules"'
        let g:unite_source_grep_recursive_opt = '' .
                    \ '-i --vimgrep --hidden --column ' .
                    \ '--ignore ".hg"' .
                    \ '--ignore ".svn"' .
                    \ '--ignore ".git"' .
                    \ '--ignore ".bzr"' .
                    \ '--ignore "build"' .
                    \ '--ignore "log"' .
                    \ '--ignore "vendor"' .
                    \ '--ignore "node_modules"'
    elseif executable('ack-grep')
        let s:unite_source_grep_command = 'ack-grep'
        let g:unite_source_grep_default_opts = '%s --nocolor -f'
        let g:unite_source_grep_recursive_opt = ''
    elseif executable('pt')
        let g:unite_source_grep_command = 'pt'
        let g:unite_source_grep_default_opts = '--nogroup --nocolor'
        let g:unite_source_grep_recursive_opt = ''
    elseif executable('ack')
        let g:unite_source_grep_command = 'ack'
        let g:unite_source_grep_default_opts = '-i --no-heading --no-color -k -H'
        let g:unite_source_grep_recursive_opt = ''
    endif
    function! s:unite_settings()
        nmap <buffer> Q <plug>(unite_exit)
        nmap <buffer> <esc> <plug>(unite_exit)
        imap <buffer> <esc> <plug>(unite_exit)
    endfunction
    autocmd FileType unite call s:unite_settings()

    "nmap <space> [unite]
    "nnoremap [unite] <nop>
    if WINDOWS()
        nnoremap <silent> [unite]p :<C-u>Unite -start-insert -toggle -auto-resize -buffer-name=mixed file_rec:! buffer file_mru bookmark<cr><c-u>
        nnoremap <silent> [unite]f :<C-u>Unite -start-insert -toggle -auto-resize -buffer-name=files file_rec:!<cr><c-u>
    else
        nnoremap <silent> [unite]p :<C-u>Unite -start-insert -toggle -auto-resize -buffer-name=mixed file_rec/async:! buffer file_mru bookmark<cr><c-u>
        nnoremap <silent> [unite]f :<C-u>Unite -start-insert -toggle -auto-resize -buffer-name=files file_rec/async:!<cr><c-u>
    endif
    nnoremap <silent> [unite]e :<C-u>Unite -buffer-name=recent file_mru<cr>
    nnoremap <silent> [unite]y :<C-u>Unite -buffer-name=yanks history/yank<cr>
    nnoremap <silent> [unite]l :<C-u>Unite -auto-resize -buffer-name=line line<cr>
    nnoremap <silent> [unite]b :<C-u>Unite -auto-resize -buffer-name=buffers buffer file_mru<cr>
    nnoremap <silent> [unite]/ :<C-u>Unite -no-quit -buffer-name=search grep:.<cr>
    nnoremap <silent> [unite]m :<C-u>Unite -auto-resize -buffer-name=mappings mapping<cr>
    nnoremap <silent> [unite]s :<C-u>Unite -quick-match buffer<cr>
endif
" }}}
