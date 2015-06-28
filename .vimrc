execute pathogen#infect()
syntax on
filetype plugin indent on

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file                                                                                                       
let mapleader = ","
let g:mapleader = ","

" Set keybindings
nmap <F8> :TagbarToggle<CR>
map <F7> :NERDTreeToggle<CR>
set pastetoggle=<F9>

" Set gopath
let $PATH= "/home/soda/go/bin:" . $PATH

" Enable mouse support
set mouse=a

" Set goimports
let g:go_bin_path = "/home/soda/go/bin"
let g:go_fmt_command = "goimports"

" highlights
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1

" Copy selection to X11 clipboard
set clipboard^=autoselect
set guioptions+=a

" Set font
if has("gui_running")
	set guifont=Source\ Code\ Pro\ for\ Powerline\ 12
endif

" Colorscheme
if has("gui_running")
    set background=light
    colorscheme solarized
else
    set background=light
    colorscheme molokai
endif

" Disable toolbar in gvim
set guioptions=m  "remove menubar

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

" Remove warning about trailing whitespaces
let g:airline_detect_whitespace=0
" Use powerline fonts
let g:airline_powerline_fonts=1
" Override colorscheme
let g:airline_theme='solarized'
" fix unknown symbls in gvim
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\u3000"
" fix insert delay
set ttimeoutlen=50

" tab navigation like firefox
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i

" Go bindings
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <leader>i <Plug>(go-info)

" This trigger takes advantage of the fact that the quickfix window can be
" easily distinguished by its file-type, qf. The wincmd J command is
" equivalent to the Ctrl+W, Shift+J shortcut telling Vim to move a window to
" the very bottom (see :help :wincmd and :help ^WJ).
autocmd FileType qf wincmd J
