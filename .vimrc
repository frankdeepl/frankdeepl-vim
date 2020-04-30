"extension
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'scrooloose/nerdtree'
Plugin 'Tggdroot/indentLine'
Plugin 'tell-k/vim-autopep7'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdcommenter'
"Plugin 'python-mode/python-mode'
"Plugin 'vim-scripts/Efficient-python-folding'
Plugin 'Valloric/YouCompleteMe'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'vim-scripts/YankRing.vim'
Plugin 'junegunn/limelight.vim'
call vundle#end()
filetype plugin indent on

"Auto reloading of .vimrc
autocmd! bufwritepost .vimrc source %



"Formatting
set nocompatible
set number

set guioptions-=r
set guioptions-=L
set guioptions-=b


set showtabline=0
set guifont=Monaco:h3
syntax on
let g:solarized_termcolors=256
set background=dark

"colorscheme solarized
set nowrap
set fileformat=unix
set cindent
"Real programmers don's use TABs but spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4

"set shitftround
set expandtab


set showmatch
set scrolloff=5
set laststatus=2

set fenc=utf-8
set backspace=2
set mouse=a
set selection=exclusive
set selectmode=mouse,key
set matchtime=5


"Make serach case insensitive
set ignorecase
set incsearch
set hlsearch
set smartcase

"Disable stupid backup
set nobackup
set nowritebackup
set noswapfile


set noexpandtab
set whichwrap+=<,>,h,l

set autoread
set cursorline
set tw=79
set fo-=t
"set colorcolumn=80
"highlight ColorColumn ctermbg=233


"F5 run python code
map <F5> :Autopep8<CR> :w<CR> :call RunPython()<CR>
function RunPython()
	let mp = &makeprg
	let ef = &errorformat
	let exeFile = expand("%:t")
	setlocal makeprg=python\ -u
	set efm=%C\ %.%#,#A\ \File\ \"%f\"\\,\ line\ %1%.%#,%Z%[%^\ ]%\\@=%m
	silent make %
	copen
	let &makeprg = mp
	let &errorformat = ef
endfunction

"F2 open folder list
map <F2> :NERDTreeToggle<CR>
let NERDTreeChDirMode=1
"show bookmark"
let NERDTreeShowBookmarks=1
"Ignore format"
let NERDTreeIgnore=['\~$','\.pyc$','\.swp$']
"Windows size"
let NERDTreeWinSize=25

"Indentation line
let g:indentLine_char='|'
let g:indentLine_enabled=1

"autopep8 setting"
let g:autopep8_disable_show_diff=1

let mapleader=','
map <F3> <leader>ci <CR>


"Better copy & paste
set pastetoggle=<F3>
set clipboard=unnamed


noremap <c-z> :update<CR>
vnoremap <c-z> <c-c> :update<CR>
inoremap <c-z> <c-o> :update<CR>
set autoread
au CursorHold * checktime
"noremap <Learder>s :update<CR>

"bind Ctrl+<movement> keys to move around the windows
map <c-j> <c-w>j
map <c-j> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

"easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>: tabtabnext<CR>


"Quick command
noremap <Leader>q :quit<CR>
noremap <Leader>Q ;qa!<CR>

"map sort function to a key
"vnoremap <Leader>s :sort<CR>


"easier moving of code blocks,shift+< or shift+>
vnoremap < <gv
vnoremap > >gv

"Show whitespace
"MUST be inserted Before the coloscheme command
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/ 

set t_Co=256
color wombat256mod


"python
"
" (2) YouCompleteMe
" disable YCM in some file
let g:ycm_filetype_blacklist = {
\  'tagbar' : 1,
\  'nerdtree' : 1,
\}
" YCM need python2 or python3
let g:ycm_path_to_python_interpreter='/usr/bin/python3'
"
" complete by python2 or python3
let g:ycm_python_binary_path='/usr/bin/python3'

let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
" disable boring syntax check
let g:ycm_show_diagnostics_ui=0
let g:ycm_register_as_syntastic_checker=0
let g:ycm_confirm_extra_conf=0

" complete strings and comments
let g:ycm_complete_in_strings=1
let g:ycm_complete_in_comments=1
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_collect_identifiers_from_comments_and_strings=1
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_min_num_of_chars_for_completion=2
" disable the cache
let g:ycm_cache_omnifunc=0
map <Leader>b Oimport ipdb; ipdb.set_trace() #BREAKPOINT

"
"map <Leader>g :call RopeGotoDefinition()<CR>
"let ropevim_enable_shortcuts=1
"let g:pymode_rope_goto_def_newwin = "vnew"
"let g:pymode_rope_extended_complete = 1
"let g:pymode_breakpoint = 0
"let g:pymode_syntax = 1
"let g:pymode_syntax_builtin_objs = 0
"let g:pymode_syntax_builtin_funcs = 0
"map <Leader>b 0import ipdb; ipdb.set_trace()
"BREAKPOINT
"augroup vimrc_autocmds
	"autocmd!
	 "highlight characters past column 80
	"autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
	"autocmd FileType python match Excess /\%80v.*/
	"autocmd FileType python set nowrap
	"augroup END



"Python folding
"set nofoldenable

