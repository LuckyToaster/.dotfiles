" General settings
set encoding=utf-8
filetype plugin indent on 
syntax on
set autoindent smartindent smartcase 
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
set noerrorbells nocompatible nowrap
set number relativenumber
set backspace=indent,eol,start
set laststatus=2 mouse=a
set incsearch showmatch
set cursorcolumn cursorline
let mapleader = " "
let &t_SI = "\e[6 q" "Insert mode block cursor
let &t_EI = "\e[2 q" "Normal mode thin cursor
imap df <esc>
nnoremap S :%s//g<Left><Left> 
autocmd InsertEnter * norm zz
execute pathogen#infect()

" tab mapping
nnoremap tn :tabnew<Space>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>

" split navigation
nnoremap <leader>h :wincmd h <CR>
nnoremap <leader>j :wincmd j <CR>
nnoremap <leader>k :wincmd k <CR>
nnoremap <leader>l :wincmd l <CR>

" colorscheme
let g:gruvbox_contrast_dark = 'medium'
let g:gruvbox_bold = '1'
let g:gruvbox_italic = '1'
let g:gruvbox_underline = '1'
colorscheme gruvbox
set background=dark

" Nerdtree plugin settings
nmap <leader>f :NERDTreeToggle<CR>
autocmd VimEnter * NERDTree | wincmd p "Start with cursor in the editing window.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif " Quit vim if nerdtree is only buffer left

" Coc plugin settings
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"

" Language specific shortcuts
autocmd Filetype python,py map <F5> :!clear<space>;python<space>%<CR>
autocmd Filetype tex,latex map <F5> :!<space>pdflatex<space>%<CR><CR>
autocmd Filetype xhtml,html map <F5> :!clear<space>;brave<space>%<space>&<space><Enter><Enter>
autocmd Filetype java map <F5> :!clear<space>;javac<space>%<space>;java<space>-cp<space>%:p:h<space>%:t:r<CR>

" java specific settings
let java_highlight_functions = 1
let java_highlight_all = 1
highlight link javaScopeDecl Statement
highlight link javaType Type
highlight link javaDocTags PreProc

" Fuzzy finder with :find
"   <CR>/v/t to open in an h-split/v-split/tab
"   check |netrw-browse-maps| for more
"   ':edit <folder>' opens file browser
set path+=** " search into subfolders, gives tab completion 4 files
set wildmenu " display all matching files when tab-completion happens
let g:netrw_banner=0                           
let g:netrw_browse_split=4                     
let g:netrw_altv=1                             
let g:netrw_liststyle=3                        
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide=',\(^\|\s\s\)\zs\.\S\+'

" Spellchecking (toggle for on/off)
"   z+w removes word from dict.
"   z+g to add word to dict, z+u+g to undo
"   [s , ]s to move through errors
"   z+w removes word from dict.
map <F9> :setlocal spell! spelllang=en<CR>
map <F10> :setlocal spell! spelllang=es<CR>
hi SpellBad cterm=underline
