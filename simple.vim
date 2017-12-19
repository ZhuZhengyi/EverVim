
call plug#begin('~/.vim/bundle/')
Plug 'mhinz/vim-startify'
"Plug 'scrooloose/nerdtree'
Plug 'Shougo/unite.vim'                             "查找集成
Plug 'Shougo/vimfiler.vim'                          "文件浏览器
Plug 'flazz/vim-colorschemes'
Plug 'mtth/cursorcross.vim'                         "高亮光标所在行列
Plug 'benmills/vimux'                               " 快速启动tmux命令, \vp
Plug 'christoomey/vim-tmux-navigator'               " 兼容tmux导航
Plug 'edkolev/tmuxline.vim'                         "
Plug 'jebaum/vim-tmuxify'                           "
Plug 'vim-airline/vim-airline-themes'               "状态栏主题
Plug 'ntpeters/vim-airline-colornum'                "状态栏显示当前行号
call plug#end()
        
let g:vimfiler_as_default_explorer = 1
"let g:NERDTreeHijackNetrw = 1
colorscheme molokai
let g:rehash256 = 1
" http://stackoverflow.com/questions/6427650/vim-in-tmux-background-color-changes-when-paging/15095377#15095377
set t_ut=
