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

" Airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

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
Plugin 'takac/vim-hardtime'

" Show marks
Plugin 'jacquesbh/vim-showmarks'

" Indent guides
" Plugin 'thaerkh/vim-indentguides'

" Multiple cursors
Plugin 'terryma/vim-multiple-cursors'

" Ack/ag support
Plugin 'mileszs/ack.vim'

" Define indentation levels as vim objects
Plugin 'michaeljsmith/vim-indent-object'

" CtrlP interface for opening files
Plugin 'ctrlpvim/ctrlp.vim'

" Tmuxline
Plugin 'edkolev/tmuxline.vim'

" View buffers on "/@/C-r
Plugin 'junegunn/vim-peekaboo'

" Vimwiki
Plugin 'vimwiki/vimwiki'

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
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

" Load matchit.vim, but only if the user hasn't installed a newer version.
if !exists('g:loaded_matchit') && findfile('plugin/matchit.vim', &rtp) ==# ''
  runtime! macros/matchit.vim
endif

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
  autocmd BufRead,BufNewFile Appraisals set filetype=ruby
  autocmd BufRead,BufNewFile *.md set filetype=markdown
  autocmd BufRead,BufNewFile .{jscs,jshint,eslint}rc set filetype=json
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

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ackprg= 'ag --vimgrep'

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag -Q -l --nocolor --hidden -g "" %s'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0

  if !exists(":Ag")
    command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
    nnoremap \ :Ag<SPACE>
  endif
endif

" Make it obvious where 80 characters is
set textwidth=80
let &colorcolumn=join(range(81,999),",")
autocmd BufEnter * highlight OverLength ctermfg=darkred
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

" Switch between the last two files
"nnoremap <leader><leader> <c-^>

" Get off my lawn
"nnoremap <Left> :echoe "Use h"<CR>
"nnoremap <Right> :echoe "Use l"<CR>
"nnoremap <Up> :echoe "Use k"<CR>
"nnoremap <Down> :echoe "Use j"<CR>

" vim-test mappings
"nnoremap <silent> <Leader>t :TestFile<CR>
"nnoremap <silent> <Leader>s :TestNearest<CR>
"nnoremap <silent> <Leader>l :TestLast<CR>
"nnoremap <silent> <Leader>a :TestSuite<CR>
"nnoremap <silent> <leader>gt :TestVisit<CR>

" Run commands that require an interactive shell
nnoremap <Leader>r :RunInInteractiveShell<space>

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" configure syntastic syntax checking to check on open as well as save
let g:syntastic_check_on_open=1
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]
let g:syntastic_eruby_ruby_quiet_messages =
    \ {"regex": "possibly useless use of a variable in void context"}

" Set spellfile to location that is guaranteed to exist, can be symlinked to
" Dropbox or kept in Git and managed outside of thoughtbot/dotfiles using rcm.
set spelllang=en
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

" Additional concealment
set conceallevel=2
let g:tex_conceal="abdgm"
" But not on the line with the cursor
set concealcursor="nc"

" Set up Airline
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
" Let airline know about ale
let g:airline#extensions#ale#enabled = 1

" Navigate around ale matches easily
nmap <C-h> <Plug>(ale_previous_wrap)
nmap <C-l> <Plug>(ale_next_wrap)
" Nicer gutter symbols for errors and warnings
let g:ale_sign_error = '!'
let g:ale_sign_warning = '?'
" Let ale show the loclist
let g:ale_open_list = 'on_save'

"" Set up Syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

" Colour scheme
syntax enable
set background=dark
colorscheme solarized

" Open multiple files in tabs
":au BufAdd,BufNewFile,BufRead * nested tab sball

" Configure Nerdfont
set guifont=DejaVuSansMono\ Nerd\ Font\ Book\ 11

" Recgonise namelists as Fortran files for syntax highlighting
if has("autocmd")
    au BufNewFile,BufRead *.nml set filetype=fortran
    au BufNewFile,BufRead *.namelist set filetype=fortran
    au BufNewFile,BufRead *.in set filetype=fortran
endif

"nnoremap <Leader>o :tabe<space>
"nnoremap <Leader>e :tabe<space>
nnoremap <Leader>o :edit<space>
nnoremap <Leader>e :edit<space>
nnoremap gt :bn<CR>
nnoremap gT :bp<CR>
nnoremap <Leader>g :bu<space>
nnoremap <Leader>w :w<CR>
nnoremap <Leader><Leader> :w<CR>
nnoremap <Leader>x :bd<CR>
nnoremap <Leader>q :q<CR>

" Copy and paste to/from system clipboards
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p

vmap <Leader>d "+d
nmap <Leader>v V
nmap <Leader>b <c-v>
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]
map q: :q

" Highlight search results
set hlsearch
" But clear the highlights easily
map <silent> <leader><cr> :noh<cr>

" Allow switching buffers without writing changes
set hidden

" Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

" Turn hard mode on by default
"autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
" Turn Hardtime on by default
"let g:hardtime_default_on = 1
" Use <leader>h to toggle hard mode (or hardtime)
"nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>
nnoremap <leader>h <Esc>:HardTimeToggle<CR>

autocmd VimEnter,BufNewFile,BufReadPost * silent! DoShowMarks!

" Lower update time for more frequent updating of signs etc.
set updatetime=750

"let g:syntastic_python_python_exe = 'python3'
"let g:syntastic_python_flake8_exec = 'python3'
"let g:syntastic_python_flake8_exec = 'flake8-py3'

let g:ale_python_flake8_executable = 'python3'
let g:ale_python_flake8_options = '-m flake8'

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

" Quicker window movement
"nnoremap <C-j> <C-w>j
"nnoremap <C-k> <C-w>k
"nnoremap <C-h> <C-w>h
"nnoremap <C-l> <C-w>l

" Insert new lines without entering insert mode
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

" Use Vim airline to define tmux statusline
let g:airline#extensions#tmuxline#enabled = 1
let airline#extensions#tmuxline#snapshot_file = "~/.tmux-status.conf"

" Assume ambiguous-width characters are single-width
set ambiwidth=single

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
nnoremap <leader>w :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" Local config
if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif
