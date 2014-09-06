execute pathogen#infect()
syntax on
filetype plugin indent on

" Set keybindings
nmap <F8> :TagbarToggle<CR>
map <F7> :NERDTreeToggle<CR>
set pastetoggle=<F9>

" Set gopath
let $GOPATH="/home/soda/src"
let $PATH= "/home/soda/Downloads/go/bin:" . $PATH

" Set font
if has("gui_running")
	set guifont=Source\ Code\ Pro\ 9
endif

" Colorscheme
if has("gui_running")
    set background=dark
    colorscheme molokai
else
    colorscheme desert
    let g:colors_name="desert"
endif

" Disable toolbar in gvim
:set guioptions-=T  "remove toolbar

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" ruler on
set ruler 

" hl cursorline
set cursorline

" Show linenumbers
set number

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction


" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

" tab navigation like firefox
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i

" Remove warning about trailing whitespaces
let g:airline_detect_whitespace=0

