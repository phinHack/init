set nocompatible              " be iMproved, required
filetype plugin indent on     

" Disable annoying beeping
set belloff=all

set nocompatible
set autoindent
set cindent
" searching ignoring case
set ignorecase


set cursorcolumn

set clipboard=unnamed


"--------------------------------------------Plugin 시작

call plug#begin()

" basic plugin
Plug 'blueyed/vim-diminactive' "화면 분할 시 background color 변경
Plug 'koron/nyancat-vim'
Plug 'dominikduda/vim_current_word'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree' 
Plug 'dracula/vim', { 'as': 'dracula' }

" coc plugin
" Plug 'haya14busa/vim-asterisk'

call plug#end()

"---------------------------------------------Plugin 종료

"--------------------------------------------- vim 기본 설정

" color setting
colorscheme dracula
let g:dracula_colorterm = 0
let mapleader=","
" line number
"set number relativenumber
"set rnu


syntax on           "구문 강조
set t_Co=256        "구문강조 색 변경
set encoding=utf-8
set tabstop=4       "<Tab> key 4칸 이동
set cursorline      "현재 줄 강조
set nu              "Line 출력
set ruler
set laststatus=2    "두줄로 표시
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\  "현재 라인 위치 출력
set wildmenu

" set showcmd
set showcmd

"-------------------------------------------- vim 기본 설정 끝


" ------------------------------------------------- mapping  시작
"



" open rc
nmap <Leader>rc :rightbelow vnew $MYVIMRC<CR>

" nerdtre setting
" nmap <C-F> :NERDTreeFind<CR>
nmap <Leader>nerd :NERDTreeToggle<CR>


 " ultisnips
 "
 " " ultisnips
"let g:UltiSnipsExpandTrigger="<C-y>"
"let g:UltiSnipsJumpForwardTrigger="<Right>"
"let g:UltiSnipsJumpBackwardTrigger="<Left>"


" coc.nvim

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
"inoremap <silent><expr> <TAB>
"\ pumvisible() ? "\<C-n>" :
"\ <SID>check_back_space() ? "\<TAB>" :
"\ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

"function! s:check_back_space() abort
"let col = col('.') - 1
"return !col || getline('.')[col - 1]  =~# '\s'
"endfunction
" Use <c-space> to trigger completion.
" inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
"if exists('*complete_info')
"inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
"else

"inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"



" set asterick
" map *   <Plug>(asterisk-*)
"let g:asterisk#keeppos = 1

 " 
"endif
 " WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
    augroup END
endif
set mouse=n
set shiftwidth=4
colorscheme dracula
set guicursor=
hi CurrentWord ctermbg=53
hi CurrentWordTwins ctermbg=53
