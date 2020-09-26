"" set leader key
let g:mapleader = ","

"" explorer
source $XDG_CONFIG_HOME/nvim/settings/explorer.vim

"" themes
source $XDG_CONFIG_HOME/nvim/settings/themes.vim

"" lines
source $XDG_CONFIG_HOME/nvim/settings/lines.vim

"" lsp
source $XDG_CONFIG_HOME/nvim/settings/lsp.vim

"" search
source $XDG_CONFIG_HOME/nvim/settings/search.vim

" auto source when writing to init.vm alternatively you can run :source $MYVIMRC
au! BufWritePost $MYVIMRC source %

" You can't stop me
cmap w!! w !sudo tee %


