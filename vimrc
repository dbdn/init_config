execute pathogen#infect()
syntax on
filetype plugin indent on

set nu
set ruler
set showcmd
set softtabstop=4
set shiftwidth=4
set ignorecase
set hlsearch
set incsearch
set expandtab
set cindent
set showmatch
set smartindent
set autoindent
set mouse=a
" NERDTree
nmap nt :NERDTree <CR>

" minibuffer
let g:miniBufExplMaxSize = 2

" taglist
let Tlist_Show_One_File=1    " 只展示一个文件的taglist
let Tlist_Exit_OnlyWindow=1  " 当taglist是最后以个窗口时自动退出
let Tlist_Use_Right_Window=1 " 在右边显示taglist窗口
let Tlist_Sort_Type="name"   " tag按名字排序
nmap tl :TlistToggle <CR>

""""""""""""""""""""""""""""""
" => Statusline
""""""""""""""""""""""""""""""
" Always hide the statusline
set laststatus=2

" Format the statusline
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L:%c


function! CurDir()
    let curdir = substitute(getcwd(), '/Users/amir/', "~/", "g")
    return curdir
endfunction

function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    else
        return ''
    endif
endfunction
