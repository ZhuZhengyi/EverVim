
 "vim-tmuxify {{{
 if isdirectory(expand(EverVimBundleDir("vim-tmuxify")))
     let g:tmuxify_custom_command = 'tmux split-window -d'
     let g:tmuxify_run = {
                 \ 'sh': 'bash %',
                 \ 'go': 'go build %',
                 \ 'python': 'python %',
                 \ }
 endif
" }}}
