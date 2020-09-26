"" Background
set background=dark                     " tell vim what the background color looks like

"" Fix backspace indent
set backspace=indent,eol,start

" set noshowmode                          " We don't need to see things like -- INSERT -- anymore
" set autochdir                           " Your working directory will always be the same as your working directory

"" encoding
set encoding=utf-8                      " The encoding displayed
set fileencoding=utf-8                  " The encoding written to file
set fileencodings=utf-8

"" NumberLine
set ruler              			        " Show the cursor position all the time
set number                              " Line numbers
set relativenumber                      " Relative numbers
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                      	" treat dash separated words as a word text object"

"" split panes
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right

"" mouse
set mouse=a                             " Enable your mouse
set mousemodel=popup

"" Disable the blinking cursor.
set gcr=a:blinkon0
set scrolloff=3

"" Status bar
set laststatus=2
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\
set laststatus=0                        " Always display the status line

"" Use modeline overrides
set modeline
set modelines=10

"" title
set title
set titleold="Terminal"
set titlestring=%F

"" clipboard
set clipboard=unnamedplus               " Copy paste between vim and everything else

"" fileformats
set fileformats=unix,dos,mac

"" shell
if exists('$SHELL')
    set shell=$SHELL
else
    set shell=/bin/sh
endif

let no_buffers_menu=1
syntax on                               " Enables syntax highlighing
set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                              " Display long lines as just one line
set pumheight=10                        " Makes popup menu smaller
set conceallevel=0                      " So that I can see `` in markdown files
set cursorline                          " Enable highlighting of the current line
set guioptions=egmrti
set gfn=Monospace\ 10

