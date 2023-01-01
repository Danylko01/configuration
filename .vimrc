" 设置

" 设置行号
set number

" 设置颜色主题 colorscheme hybrid
set background=dark
colorscheme gruvbox

" 语法高亮
syntax on

" 高亮搜索
set hlsearch

" 映射
nnoremap <SPACE> <Nop>
let mapleader=" "
" let mapleader=<space>
let g:mapleader=" "

" 使用jj 进入normal模式
inoremap jj <Esc>`^

" 使用leader+w 直接保存
inoremap <leader>w <Esc>:w<cr>
noremap <leader>w :w<cr>

" 使用ctrl+h/j/k/l 切换光标所在窗口
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l


" 插件

call plug#begin('~/.vim/plugged')

Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
" ctrl + p快速搜索文件
Plug 'ctrlpvim/ctrlp.vim'
" 在当前窗口快速移动光标 ss
Plug 'easymotion/vim-easymotion'
" 处理双括号等 通过ds cs ys
Plug 'tpope/vim-surround'
" 模糊搜索插件 ***该插件有问题暂时不使用
" 使用Ag [patern]模糊搜索字符串
" 使用Files [path] 模糊搜索目录
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" 替换插件
" 使用 :Far foo bar **/* 将文件中的foo替换为bar
" 使用 ：Fardo完成替换操作
Plug 'brooth/far.vim'
" 打造轻量pyton IDE
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
" 快速浏览代码 显示函数变量等
Plug 'majutsushi/tagbar'
" 快速注释代码 gcc 取消注释 gcgc
Plug 'tpope/vim-commentary'

call plug#end()

" NerdTree 映射
nnoremap <leader>o :NERDTreeToggle<CR>
nnoremap <leader>p :NERDTreeFind<CR>
let NERDTreeIgnore=['\.git$', '\.jpg$', '\.mp4$', '\.ogg$', '\.iso$', '\.pdf$', '\.pyc$', '\.odt$', '\.png$', '\.gif$', '\.db$']

"ctrlP 映射
let g:ctrlp_map = '<c-p>'

"easymotion 映射
nmap ss <Plug>(easymotion-s2)
" python-mode 配置
let g:pymode_python='python3'
let g:pymode_trim_whitespaces=1
let g:pymode_doc=1
let g:pymode_doc_bind = 'K'
let g:pymode_rope_goto_definition_bind = '<C-]>'
let g:pymode_lint = 1
let g:pymode_lint_checkers = ['pyflakes', 'pep8', 'mccabe', 'pylint']
let g:pymode_options_max_line_length = 120
" tarbar 映射
nmap <leader>t :TagbarToggle<CR>

" deoplete
" let g:deoplete#enable_at_startup = 1
" set completeopt-=preview
