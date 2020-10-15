" session management
let g:session_directory = "~/dotfiles/nvim/session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1

"" session mappings
nnoremap <leader>so :OpenSession<Space>
nnoremap <leader>ss :SaveSession<Space>
nnoremap <leader>sd :DeleteSession<CR>
nnoremap <leader>sc :CloseSession<CR>

"" startify
let g:startify_lists = [
                  \ { 'type': 'files',     'header': ['   Files']            },
                  \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
                  \ { 'type': 'sessions',  'header': ['   Sessions']       },
                  \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
                  \ ]

let g:startify_bookmarks = [
                  \ { 'i': '~/dotfiles/nvim/init.vim' },
                  \ { 'z': '~/.zshrc' },
                  \ '~/education/competitive_programming',
                  \ '~/education/projects/NDScala',
                  \ '~/education/projects/SimpleDF',
                  \ ]

let g:startify_session_autoload = 1

let g:startify_custom_header = [
                  \'_|    _|',
                  \'_|  _|      _|_|_|  _|  _|_|  _|_|_|      _|_|_|',
                  \'_|_|      _|    _|  _|_|      _|    _|  _|    _|',
                  \'_|  _|    _|    _|  _|        _|    _|  _|    _|',
                  \'_|    _|    _|_|_|  _|        _|    _|    _|_|_|' ]
