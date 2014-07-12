" set line numbers
set number
noremap ; :

" pathogen plugin manager
execute pathogen#infect() 
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

filetype plugin indent on 

:autocmd FileType nerdtree set number
:autocmd FileType taglist set number

" syntax highlighting
syntax enable
syntax on

" open new split panes to right and bottom
set splitbelow
set splitright

" solarized color scheme
set background=dark
colorscheme solarized

" nerdtree configurations
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

map <C-y> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\~$', '^\.git', '\.swp$', '\.DS_Store$','\.pyc']

" ====== custom key bindings =========
inoremap jk <Esc>
inoremap <Nul> <C-n>

" move quickly between windows 
noremap <C-j> <C-w>j
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l
noremap <C-k> <C-w>k

" disable arrow keys 
map <up> <nop> 
map <down> <nop> 
map <left> <nop> 
map <right> <nop> 
imap <up> <nop> 
imap <down> <nop> 
imap <left> <nop> 
imap <right> <nop>

" python syntax settings
set ruler 

set tabstop=2
set shiftwidth=2
set expandtab 
set softtabstop=2


" python indentation 
au FileType py set autoindent
au FileType py set smartindent
au FileType py set textwidth=79
set statusline=%F%m%r%h%w\ [TYPE=%Y\ %{&ff}]\
            \ [%l/%L\ (%p%%)
let g:SuperTabDefaultCompletionType = "context"

" Taglist plugin config
noremap <silent> <Leader>t :TlistToggle<CR>
let Tlist_Use_Right_Window = 1
let Tlist_Auto_Open = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_WinWidth = 30
let Tlist_Enable_Fold_Column = 0
let Tlist_Show_One_File = 1

set statusline=[%02n]\ %f\ %(\[%M%R%H]%)%=\ %4l,%02c%2V\ %P%*
