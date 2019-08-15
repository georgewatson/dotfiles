set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" LaTeX-suite
Plugin 'vim-latex/vim-latex'

" Additional use of conceal in TeX
Plugin 'KeitaNakamura/tex-conceal.vim'
" And in Python (unnecessary due to custom file ~/.vim/after/syntax/python.vim)
"Plugin 'ehamberg/vim-cute-python'
" Haskell (mostly replicated by FiraCode font ligatures;
" non-duplicated bits in " ~/.vim/after/syntax/haskell.vim)
"Plugin 'Twinside/vim-haskellConceal'
" Even more Haskell
" Plugin 'enomsg/vim-haskellConcealPlus'

" Airline
" Plugin 'vim-airline/vim-airline'
" Plugin 'vim-airline/vim-airline-themes'
" Or Buftabline if buffer-tabs are all I want
Plugin 'ap/vim-buftabline'

" Solarized colours
Plugin 'altercation/vim-colors-solarized'

" Syntax checking
"Plugin 'vim-syntastic/syntastic'
" Or asynchronous
Plugin 'w0rp/ale'

" Devicons
Plugin 'ryanoasis/vim-devicons'

" Display git changed lines in gutter
Plugin 'airblade/vim-gitgutter'

" Git stuff
Plugin 'tpope/vim-fugitive'

" Hard mode
"Plugin 'wikitopian/hardmode'
" OR Hardtime
"Plugin 'takac/vim-hardtime'

" Show marks
Plugin 'jacquesbh/vim-showmarks'

" Indent guides
" Plugin 'thaerkh/vim-indentguides'

" Multiple cursors
"Plugin 'terryma/vim-multiple-cursors'

" Ack/ag support
"Plugin 'mileszs/ack.vim'

" Define indentation levels as vim objects
"Plugin 'michaeljsmith/vim-indent-object'

" CtrlP interface for opening files
"Plugin 'ctrlpvim/ctrlp.vim'

" Tmuxline
"Plugin 'edkolev/tmuxline.vim'

" View buffers on "/@/C-r
Plugin 'junegunn/vim-peekaboo'

" Vimwiki
"Plugin 'vimwiki/vimwiki'

" Pandoc
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'

" Dispatch
Plugin 'tpope/vim-dispatch'

" Live preview for :s etc.
Plugin 'markonm/traces.vim'

" Work with surrounds/delimiters
Plugin 'tpope/vim-surround'

" Handle Liquid files properly
Plugin 'tpope/vim-liquid'

" Better mergetool
Plugin 'whiteinge/diffconflicts'

" Hoogle integration
Plugin 'Twinside/vim-hoogle'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Leader
noremap <Space> <Nop>
let mapleader = " "

set backspace=2   " Backspace deletes like most programs in insert mode
set nobackup
set nowritebackup
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=50
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " do incremental searching

" Always open new splits below and to the right
set splitbelow
set splitright

syntax on

augroup vimrcEx
  autocmd!

  " When editing a file, always jump to the last known cursor position.
  " Don't do it for commit messages, when the position is invalid, or when
  " inside an event handler (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  " Set syntax highlighting for specific file types
  autocmd BufRead,BufNewFile *.md set filetype=markdown
augroup END

" When the type of shell script is /bin/sh, assume a POSIX-compatible
" shell for syntax highlighting purposes.
let g:is_posix = 1

" Softtabs, 4 spaces
set tabstop=4
set shiftwidth=4
set shiftround
set expandtab
set softtabstop=4
set smarttab
set smartindent
set autoindent
" Don't expand tabs in makefiles
autocmd FileType make setlocal noexpandtab

" Display extra whitespace
set list listchars=tab:»\ ,trail:·,nbsp:␣,extends:>,precedes:<

" Make it obvious where 80 characters is
set textwidth=80
autocmd BufEnter * highlight OverLength ctermfg=darkred ctermbg=black
autocmd BufEnter * match OverLength /\%81v.*/

" Numbers
set number
set numberwidth=4

" Tab completion
" will insert tab at beginning of line,
" will use completion if not at beginning
set wildmode=list:longest,list:full
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <Tab> <c-r>=InsertTabWrapper()<cr>
inoremap <S-Tab> <c-n>

" Run commands that require an interactive shell
nnoremap <Leader>r :RunInInteractiveShell<space>

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

" Set spellfile to location that is guaranteed to exist, can be symlinked to
" Dropbox or kept in Git and managed outside of thoughtbot/dotfiles using rcm.
set spelllang=en_gb
set spellfile=$HOME/.vim-spell-en.utf-8.add

" Autocomplete with dictionary words when spell check is on
set complete+=kspell

" Always use vertical diffs
set diffopt+=vertical

" Set up LaTeX-suite:
" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on
" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*
" OPTIONAL: This enables automatic indentation as you type.
filetype indent on
" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
let g:Tex_ViewRule_pdf='zathura'
let g:Tex_ViewRuleComplete_pdf='zathura $*.pdf &'

autocmd FileType latex let b:dispatch = 'arara %:'

" Additional concealment
set conceallevel=2
let g:tex_conceal="abdgm"
" But not on the line with the cursor
set concealcursor="nc"

" Set up buftabline
let g:buftabline_indicators = 1

" Navigate around ale matches easily
nmap <C-h> <Plug>(ale_previous_wrap)
nmap <C-l> <Plug>(ale_next_wrap)
" Nicer gutter symbols for errors and warnings
let g:ale_sign_error = ''
let g:ale_sign_warning = ''
" Let ale show the loclist
let g:ale_open_list = 'on_save'
" Other settings
let g:ale_completion_enabled = 1
let g:ale_fortran_gcc_executable = 'gfortran'
let b:ale_linters = {'javascript': ['standard', 'eslint']}

" Colour scheme
" I don't actually use Solarized,
" but the colour scheme works well with my custom palette anyway
syntax enable
set background=dark
let g:solarized_termcolors=16
let g:solarized_bold=1
let g:solarized_italic=1
let g:solarized_underline=1
let g:solarized_termtrans = 1
colorscheme solarized

highlight clear LineNr
highlight LineNr ctermfg=10
highlight CursorLineNr ctermfg=4
highlight clear CursorLine
highlight EndOfBuffer ctermfg=black
" Diffs and gitgutter
highlight clear DiffAdd
highlight DiffAdd ctermfg=2
highlight clear DiffChange
highlight DiffChange ctermfg=3
highlight clear DiffDelete
highlight DiffDelete ctermfg=1
" Menus and buftabline
highlight clear TabLine
highlight clear TabLineFill
highlight clear TabLineSel
highlight TabLineSel ctermfg=black ctermbg=4
" Misspellings
highlight SpellBad cterm=underline term=underline gui=undercurl
" Invert colours in visual mode
highlight Visual cterm=reverse ctermfg=none ctermbg=none

nnoremap <Leader>o :edit<space>
nnoremap <Leader>e :edit<space>
nnoremap gt :bn<CR>
nnoremap gT :bp<CR>
nnoremap [1;3C :bn<CR>
nnoremap [1;3D :bp<CR>
nnoremap <Leader>g :bu<space>
nnoremap <Leader><Leader> :w<CR>
nnoremap <Leader>x :bd<CR>
nnoremap <Leader>q :q<CR>

" Copy and paste to/from system clipboards
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p

vmap <Leader>d "+d
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]
map q: :q

" Make Y consistent with C and D
nnoremap Y y$

" Highlight search results
set hlsearch
" But clear the highlights easily
map <silent> <leader><cr> :noh<cr>

" Allow switching buffers without writing changes
set hidden

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

autocmd VimEnter,BufNewFile,BufReadPost * silent! DoShowMarks!

" Lower update time for more frequent updating of signs etc.
set updatetime=750

let g:ale_python_flake8_executable = 'python3'
let g:ale_python_flake8_options = '-m flake8'
let g:ale_python_pylint_executable = 'python3'
let g:ale_python_pylint_options = '-m pylint'

" Highlight the current line
set cursorline
" and keep it mostly centred
set so=999

" Use hybrid line numbers
set number relativenumber
" But show absolute numbers in insert mode & when the buffer loses focus
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" Insert new lines without entering insert mode
nmap <CR> o<Esc>

" Pandoc settings
let g:pandoc#command#autoexec_command = "Pandoc pdf --toc --variable geometry:margin=1in --variable urlcolor=cyan"
let g:pandoc#command#arguments = "pdf --toc --variable geometry:margin=1in"
" Disable foldcolumn
let g:pandoc#folding#fdc = 0
" Folding is slow, so do it less
let g:pandoc#folding#level = 2
" Text width 80
let g:pandoc#formatting#textwidth = 80
let g:pandoc#formatting#smart_autoformat_on_cursor_moved = 0
let g:pandoc#formatting#mode="ha"

" Easily turn conceal off so other people can read my code
function! ToggleConcealLevel()
    if &conceallevel == 0
        setlocal conceallevel=2
    else
        setlocal conceallevel=0
    endif
endfunction
nnoremap <silent> <leader>c :call ToggleConcealLevel()<CR>

"Remove all trailing whitespace by pressing <leader>w
nnoremap <leader>w :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>``<CR>

" Light up the caps-lock light on entering insert mode
autocmd! InsertEnter * silent! execute ('!xset led 1 led on &')
" And turn it off on leaving
autocmd! InsertLeave * silent! execute ('!xset led 1 led off &')

" Set syntax highlighting for IRC logs
autocmd BufNewFile,BufRead *.irc set syntax=irc

" gVim settings
set guifont=FuraCode\ Nerd\ Font\ 11
set guioptions=acgiLt

nnoremap <leader>m :Make<CR>
nnoremap <leader><S-m> :Make!<CR>

" Be brave and go statusline-free
au VimEnter * set laststatus=0
" But have a nicer ruler
set rulerformat=%=%#Type#%L\ \L\,\ \C\ %c
" and make command-line messages shorter
set shortmess=aWIF
" And go tabline-free if <2 buffers are open
let g:buftabline_show=1

" Local config
if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif
