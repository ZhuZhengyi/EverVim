" File              : plugins/python/python-mode.vim
" Date              : 18.10.2017
" Last Modified Date: 18.10.2017

if isdirectory(expand(EverVimBundleDir("python-mode")))
    if !has('python') && !has('python3')
        let g:pymode = 0
    endif
    if has('python3')
        let g:pymode_python = 'python3'
    endif
    let g:pymode_options = 0              " do not change relativenumber
    let g:pymode_indent = 0               " use vim-python-pep8-indent
    let g:pymode_lint = 0                 " prefer syntastic; pymode
    let g:pymode_folding = 0
    let g:pymode_virtualenv = 1           " use virtualenv plugin
    let g:pymode_doc = 1                  " use pydoc
    let g:pymode_rope_completion = 0      " use YouCompleteMe
    let g:pymode_syntax_space_errors = 0  " usingMyWhitespaceSetup
    let g:pymode_trim_whitespaces = 1
    let g:pymode_debug = 0
    let g:pymode_rope = 0                 "
    let g:pymode_breakpoint = 0

    let g:pymode_rope_goto_definition_bind = "<C-]>"

endif
