" 编辑器设置

    " 缩进设置
    set tabstop=4           " tab缩进的空格数
    set shiftwidth=4        " 缩进级别的空格数
    set softtabstop=4       
	set autoindent          " 换行自动缩进
    
    " 搜索设置
    set hlsearch            " 高亮显示搜索结果
    
    " 编码设置
    set encoding=utf-8      " 设置文件编码为 UTF-8
    set fileencoding=utf-8
    set fileencodings=ucs-bom,utf-8,chinese
	
	" 某些插件会与backspace冲突，导致backspace无法删除个别字符
	set backspace=indent,eol,start
    
    " 鼠标
    "set mouse=a 

" 用户界面设置

    " 颜色方案
    colorscheme default

	" 显示行号
	set number

    " 缩进显示
    " set list lcs=tab:\|\ 

    " 光标显示
    set cursorline

" 字符匹配
    
	inoremap ( ()<Esc>i
    inoremap { {}<Esc>i
    inoremap [ []<Esc>i
	inoremap " ""<Esc>i
    inoremap ' ''<Esc>i

" vim-plug

    call plug#begin('~/.vim/plugged')
    
	Plug 'preservim/nerdtree'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'tpope/vim-fugitive'
	Plug 'airblade/vim-gitgutter' 
    Plug 'vim-syntastic/syntastic'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	"Plug 'ycm-core/YouCompleteMe'

    call plug#end()

" plug-nerdtree
    nnoremap <leader>n :NERDTreeFocus<CR>
    nnoremap <C-q> :NERDTree<CR>
    nnoremap <C-w> :NERDTreeToggle<CR>
    nnoremap <C-e> :NERDTreeFind<CR>
    
    let g:NERDTreeFileLines = 1
    "let NERDTreeWinSize=28

    autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" plug-vim-airline
	set laststatus=2
    let g:airline_theme='tomorrow'

" plug-vim-fugitive
	let g:airline#extensions#branch#enabled = 1

" plug-vim-gitgutter
    highlight SignColumn      guibg=#000000 ctermbg=7	" 设置符号列
    highlight GitGutterAdd    guifg=#009900 ctermfg=2
    highlight GitGutterChange guifg=#bbbb00 ctermfg=3
    highlight GitGutterDelete guifg=#ff2222 ctermfg=1

" plug-syntastic
	set statusline+=%#warningmsg#					" 向状态栏添加warningmsg
	set statusline+=%{SyntasticStatuslineFlag()}	" 显示语法检查错误结果
	set statusline+=%*								" 清除之前的高亮属性

	let g:syntastic_always_populate_loc_list = 1	" 总是开启错误位置列表
	let g:syntastic_auto_loc_list = 1				" 自动开启位置列表
	let g:syntastic_check_on_open = 1				" 打开文件自动进行语法检查
	let g:syntastic_check_on_wq = 0					" 关闭文件时取消语法检查, 优化vim速度
	
	let g:syntastic_c_checkers = ['gcc']
	let g:syntastic_cpp_checkers = ['gcc']
	let g:syntastic_c_gcc_args = '-Wall'
	let g:syntastic_cpp_gcc_args = '-Wall'

" Plug-coc.nvim
	"inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
	"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

