" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'

call plug#begin('~/.vim/plugged')
"----------------------------------------------------
Plug 'yggdroot/indentline'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'chrisbra/vim-autosave'
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'ncm2/ncm2-path'  " filepath completion
Plug 'tpope/vim-commentary'
Plug 'luochen1990/rainbow'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'pacha/vem-tabline'
Plug 'airblade/vim-gitgutter'  " show git changes to files in gutter
call plug#end()
set encoding=UTF-8

" path to your python
let g:python3_host_prog = '/usr/bin/python3.8'


"##### Basic SETTING
filetype indent on
set fileformat=unix
set shortmess+=c
set mouse=a  " change cursor per mode
set number  " always show current line number
"set smattcase  " better case-sensitivity when searching
set wrapscan  " begin search from top of file when nothing is found anymore
set expandtab
set tabstop=4
set shiftwidth=4
set fillchars+=vert:\  " remove chars from seperators
set softtabstop=4
set history=1000  " remember more commands and search history
set nobackup  " no backup or swap file, live dangerously
set noswapfile  " swap files give annoying warning
set breakindent  " preserve horizontal whitespace when wrapping
set showbreak=..
set lbr  " wrap words
set scrolloff=8 " keep three lines between the cursor and the edge of the screen
set undodir=~/.vim/undodir
set undofile  " save undos
set undolevels=10000  " maximum number of changes that can be undone
set undoreload=100000  " maximum number lines to save for undo on a buffer reload
"set noshowmode  " keep command line clean
"set noshowcmd
set laststatus=2  " always slow statusline
set splitright  " i prefer splitting right and below
set splitbelow
set hlsearch  " highlight search and search while typing
set incsearch
set cpoptions+=x  " stay at seach item when <esc>
set noerrorbells  " remove bells (i think this is default in neovim)
"set visualbell
set t_vb=
"set relativenumber
set viminfo='20,<1000  " allow copying of more than 50 lines to other applications


" tabs:
nnoremap tn :tabnew<Space>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>

"auto indent for brackets
nmap <leader>w :w!<cr>
nmap <leader>q :lcl<cr>:q<cr>
nnoremap <leader>h :nohlsearch<Bar>:echo<CR>



inoremap <C-Enter> <C-o>o
set guioptions-=m  "menu bar
set guioptions-=T  "toolbar
"set guifont=Hack\ 11.5
set guifont=Ubuntu\ mono\ Regular\ 13
"nnoremap <buffer> H :<C-u>execute "!pydoc3 " . expand("<cword>")<CR>
"let g:ycm_key_list_stop_completion = [ '<C-y>', '<Enter>' ]
inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"
nmap <CRR-Enter> O<Esc>j
nmap <CR> o<Esc>k
" indent/unindent with tab/shift-tab
nmap <Tab> >>
nmap <S-tab> <<
imap <S-Tab> <Esc><<i
vmap <Tab> >gv
vmap <S-Tab> <gv

""## Closes windo
"nnoremap <C-/> :bd!<CR>


""### Commenting out lines
map <C-_> gcc
map <C-_> <Esc>gcc<i>
map <C-_> gcc

set clipboard+=unnamedplus
""### NVIM COPY PASTE NOT WORKING THEN sudo apt install xclip

" New settings
set relativenumber
set nohlsearch
set cmdheight=2
syntax on


noremap <C-Up> 5k
noremap <C-Down> 5j

nmap <C-S-Up> ddkP
nmap <C-S-Down> ddjP

" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>
nmap <leader>fd <Esc> :vs ~/.config/nvim/init.vim
imap jj <Esc>
set nu
set rnu
set mouse=a
set clipboard+=unnamedplus
:colo gruvbox
" theicfire .vimrc tips
" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = " " " Leader is the space key
let g:mapleader = " "
let maplocalleader = "`"
let g:maplocalleader = "`"
nnoremap <SPACE> <Nop>

"auto indent for brackets
nmap <leader>w :w!<cr>
nmap <leader>q :lcl<cr>:q<cr>
nnoremap <leader>h :nohlsearch<Bar>:echo<CR>

" FlyGrep settings
nnoremap <leader>s :FlyGrep<cr>


"#config Shorcut

"###  END




highlight ColorColumn ctermbg=black


"##### Plugins Setting
g:tagbar_ctags_bin
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle
let g:AutoPairsFlyMode = 1
let g:python_highlight_space_errors = 0
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
" nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

nmap <F8> :TagbarToggle<CR>

nnoremap <C-k><C-b> :NERDTreeToggle<CR>
:set completeopt-=preview " For No Previews


let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" --- Just Some Notes ---
" :PlugClean :PlugInstall :UpdateRemotePlugins
"
" :CocInstall coc-python
" :CocInstall coc-clangd
" :CocInstall coc-snippets
" :CocCommand snippets.edit... FOR EACH FILE TYPE

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
"##### Plugins Setting End
nmap <leader>fd <Esc> :vs ~/.config/nvim/init.vim
 " Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" nnoremap <silent> K :call <SID>show_documentation()<CR>
" function! s:show_documentation()
"   if (index(['vim','help'], &filetype) >= 0)
"     execute 'h '.expand('<cword>')
"   else
"     call CocAction('doHover')
"   endif
" endfunction


nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction


"## Autosave

"let g:autosave_extensions = '.backup' 
" let g:autosave_backup     = '~/.vim/backup'
" let g:autosave_timer      = 60*1*1000  ""- number of milliseconds to trigger
"
" (by default every 5 minutes)


" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)



"""{{{ (Python runner)
nnoremap <silent> <C-B> :call SaveAndExecutePython()<CR>
vnoremap <silent> <C-B> :<C-u>call SaveAndExecutePython()<CR>

function! SaveAndExecutePython()
    " SOURCE [reusable window]: https://github.com/fatih/vim-go/blob/master/autoload/go/ui.vim

    " save and reload current file
    silent execute "update | edit"

    " get file path of current file
    let s:current_buffer_file_path = expand("%")

    let s:output_buffer_name = "Python"
    let s:output_buffer_filetype = "output"

    " reuse existing buffer window if it exists otherwise create a new one
    if !exists("s:buf_nr") || !bufexists(s:buf_nr)
        silent execute 'botright new ' . s:output_buffer_name
        let s:buf_nr = bufnr('%')
    elseif bufwinnr(s:buf_nr) == -1
        silent execute 'botright new'
        silent execute s:buf_nr . 'buffer'
    elseif bufwinnr(s:buf_nr) != bufwinnr('%')
        silent execute bufwinnr(s:buf_nr) . 'wincmd w'
    endif

    silent execute "setlocal filetype=" . s:output_buffer_filetype
    setlocal bufhidden=delete
    setlocal buftype=nofile
    setlocal noswapfile
    setlocal nobuflisted
    setlocal winfixheight
    " setlocal cursorline " make it easy to distinguish
    setlocal nonumber
    setlocal norelativenumber
    setlocal showbreak=""

    " clear the buffer
    setlocal noreadonly
    setlocal modifiable
    %delete _

    " add the console output
    silent execute ".!python3.8 " . shellescape(s:current_buffer_file_path, 1)

    " resize window to content length
    " Note: This is annoying because if you print a lot of lines then your code buffer is forced to a height of one line every time you run this function.
    "       However without this line the buffer starts off as a default size and if you resize the buffer then it keeps that custom size after repeated runs of this function.
    "       But if you close the output buffer then it returns to using the default size when its recreated
    "execute 'resize' . line('$')

    " make the buffer non modifiable
    setlocal readonly
    setlocal nomodifiable
endfunction

"""}}}
let g:indentLine_enabled = 1
let g:indentLine_char_list = ['|', '¦', '┆', '┊']


nnoremap <leader>+ :vertical resize +5<CR>
nnoremap <leader>- :vertical resize -5<CR>
nnoremap <>rp :resize 100<CR>
" nnoremap <A-h> :wincmd h<CR>
" nnoremap <A->j :wincmd j<CR>
" nnoremap <leader>k :wincmd k<CR>
" nnoremap <leader>l :wincmd l<CR>

nnoremap <A-left> <C-w>h
nnoremap <A-up> <C-w>k
nnoremap <A-down> <C-w>j
nnoremap <A-right> <C-w>l

"Max out the height of the current split
" ctrl + w _

"Max out the width of the current split
" ctrl + w |

"Normalize all split sizes, which is very handy when resizing terminal
" ctrl + w =

"Swap top/bottom or left/right split
" Ctrl+W R

"Break out current window into a new tabview
" Ctrl+W T

"Close every window in the current tabview but the current one
" Ctrl+W o

