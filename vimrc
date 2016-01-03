

set nocompatible              " be iMproved, required  不用vi的模式
filetype off                  " required

" set the runtime path to include Vundle and initialize  这是vundle的路径
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()    " vundle函数开始
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')



" ====================如果你的插件来自github，只要写作者名/项目名就行了=====================
" let Vundle manage Vundle, required  管理自己
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" ====================如果插件来自vim-scripts，直接写插件名就行了===========================
" plugin from http://vim-scripts.org/vim/scripts.html  vim-scripts的库，必要的
Plugin 'L9'

" ====================如果插件是自己本地的git仓库，写写地址=================================
" Git plugin not hosted on GitHub 
Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}





" ==>> 代码自动补全的插件，需要先install一些东西来支持。
Plugin 'Valloric/YouCompleteMe'
" 记得安装好之后就去~/.vim/bundle/YouCompleteMe/，接下来仍需要做的是：
" sudo apt-get install build-essential cmake	c的make工具
" sudo apt-get install python-dev	确定你有python，因为安装配置的需要
" ./install.py --clang-completer   这样可以支持c的各种家族
" 若想支持更多，那就换成将下行代码运行，至少支持c# Go JS typeScript
" ./install.py --clang-completer --omnisharp-completer --gocode-completer --tern-completer






" ==>> 字体包，支持airline用的
Plugin 'powerline/fonts'
" 到~/.vim/bundle/fonts中运行install.sh，可能需要改其中的路径到~/.fonts中
" 然后将终端中的字体设置为带powline的，不能使用自系统等宽，否则无效。
" 目前是:ubuntu mono derivative powline 13





" ==>> 状态栏，需要注意字体的问题
Plugin 'bling/vim-airline' 
	let g:airline_theme="bubblegum"  "目前用的主题
	let g:airline_powerline_fonts = 1   "这个是安装字体后 必须设置此项 
	let g:Powerline_symbols="fancy"
	if !exists('g:airline_symbols')    
		let g:airline_symbols = {}
	endif
	" 启用：可以切换到其他buffer文件
	let g:airline#extensions#tabline#enabled = 1
	" 显示最顶上的buffer栏
	let g:airline#extensions#tabline#buffer_nr_show = 1
	" 下面2个是设置切换Buffer快捷键，很多会冲突，看着设置即可
	nnoremap <C-,> :bn<CR>
	nnoremap .. :bp<CR>
	" 关闭状态显示空白符号计数,用处不大"
	let g:airline#extensions#whitespace#enabled = 0
	let g:airline#extensions#whitespace#symbol = '!'
	set laststatus=2
	set t_Co=256
	" let Powerline_symbols='compatible'








" ==>> 右边栏：函数列表
Bundle 'Tagbar'
	map <F9> :TagbarToggle<CR>
	let g:tagbar_width=30
	let g:tagbar_autofocus=1






" ==>>左边栏：目录树 
Bundle 'The-NERD-tree'
	map <F8> :NERDTreeToggle<CR>
	" 设置为自动启动
	autocmd VimEnter * NERDTree		







" ==>> 底栏：文件名搜索
Bundle 'ctrlp.vim'
	" 自动忽略一些后缀
	set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.png,*.jpg,*.jpeg,*.gif " MacOSX/Linux	
	let g:ctrlp_map = ',,'	" 注意：快捷键为两个逗号，而不是ctrl+p
	let g:ctrlp_open_multiple_files = 'v'
	let g:ctrlp_cmd = 'CtrlP'
	let g:ctrlp_working_path_mode = '0'       "disable work path mode
	" 用正则表达式忽略一些后缀
	let g:ctrlp_custom_ignore = {
	  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
	  \ 'file': '\v\.(log|jpg|png|jpeg)$',
	  \ }





" ==>> 注释插件
Bundle 'The-NERD-Commenter'
	" 注释时自动加一个空格
	let g:NERDSpaceDelims=1





" ==>> 搜索工具
Bundle 'EasyMotion'
	" 代替掉默认的/搜索
	map  / <Plug>(easymotion-sn)
	omap / <Plug>(easymotion-tn)





" ==>>主题插件
Bundle 'molokai'
Bundle 'Solarized'







" All of your Plugins must be added before the following line
call vundle#end()            " required  函数结束
filetype plugin indent on    " required 



















" ==========================以下是一些个人的喜好配置了=================================


" 快捷键映射：ctrl+\	仅在插入模式可以直接保存并退出
:map! <C-\> <ESC>:q<CR>

" 快捷键映射：<F3> 打开/关闭折叠
map <F3> za

" 快捷键映射：<F4> 打开/关闭折叠（递归式）。比较少用，不用了。
" map <F4> zA

" 可视模式下，ctrl+c为复制。注意需要apt-get安装vim-nox和vim-gnome。
vmap <c-c> "+y

" 任何模式下，ctrl+v为粘贴。两个安装项同上。
map <c-v> "+p


" 在用的主题
colorscheme molokai
" 夜间主题
" colo evening

" 语法高亮
syntax enable

" 突出当前行
set cursorline

" 突出当前列
"set cursorcolumn

" 显示行号
set nu

set history=100000

" tab缩进为4个空格
set tabstop=4

" 右下角显示当前列号
set ruler

" 自动缩进的大小为4空格
set shiftwidth=4

set smarttab

" 开启缩进
set cindent


" 关闭备份功能
set nobackup


set noswapfile

" 任何模式下，鼠标永远启动
set mouse=a

" 新文件编码默认编码:utf-8
set fileencoding=utf-8

" 打开折叠功能
set foldmethod=syntax

" 默认情况下不折叠
set foldlevel=99

" 在状态栏显示正在输入的命令
set showcmd



