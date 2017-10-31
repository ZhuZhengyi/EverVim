" File              : plugins/programming/ale.vim
" Date              : 31.10.2017
" Last Modified Date: 31.10.2017

" ale {{{
if isdirectory(expand(EverVimBundleDir('ale')))
    nmap <Leader>en <Plug>(ale_next)
    nmap <Leader>ep <Plug>(ale_previous)

    let g:ale_sign_column_always = 1
    let g:ale_set_highlights = 1
    let g:ale_set_loclist = 0
    let g:ale_set_quickfix = 1
    let g:ale_lint_on_text_changed = 'normal'
    let g:ale_statusline_format = ['E✹ %d', 'W⚠ %d', '⬥ ok']
    let g:ale_echo_msg_error_str = '✹ Error'
    let g:ale_echo_msg_warning_str = '⚠ Warning'
    let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
    try
        let g:ale_sign_error = emoji#for('boom')
        let g:ale_sign_warning = emoji#for('small_orange_diamond')
    catch
        let g:ale_sign_error = '✹'
        let g:ale_sign_warning = '⚠'
    endtry
    let g:ale_echo_msg_format = '[#%linter%#](%severity%) %s'
    "let g:ale_statusline_format = ['E•%d', 'W•%d', 'OK']
    let g:ale_linters = {
                    \   'sh' : ['shellcheck'],
                    \   'vim' : ['vint'],
                    \   'html' : ['tidy'],
                    \   'go' : ['golint'],
                    \   'markdown' : ['mdl'],
                    \   'java' : ['javac'],
                    \   'javascript' : ['eslint'],
                    \   'php' : ['php','phpcs'],
                    \   'python' : ['flake8'],
                    \ }

    highlight clear ALEErrorSign
    highlight clear ALEWarningSign

    if isdirectory(expand(EverVimBundleDir('vim-airline')))
        call airline#parts#define_function('ALE', 'ALEGetStatusLine')
        call airline#parts#define_condition('ALE', 'exists("*ALEGetStatusLine")')
        let g:airline_section_error = airline#section#create_right(['ALE'])
    endif
endif
" }}}
