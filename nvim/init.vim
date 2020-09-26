""""""""""""""""""""""""""""""""""""""""""""
"" Prelim setup
""""""""""""""""""""""""""""""""""""""""""""

"" Polyglot Settings
source $XDG_CONFIG_HOME/nvim/settings/polyglot.vim

""""""""""""""""""""""""""""""""""""""""""""
"" Plugins
""""""""""""""""""""""""""""""""""""""""""""

"" Vim-Plug
source $XDG_CONFIG_HOME/nvim/plugins/vim-plug.vim

call plug#begin('$XDG_CONFIG_HOME/nvim/autoload/plugged')

"" gruvbox theme
source $XDG_CONFIG_HOME/nvim/themes/gruvbox.vim

"" Build (i.e make support)
source $XDG_CONFIG_HOME/nvim/plugins/build.vim

"" session management
source $XDG_CONFIG_HOME/nvim/plugins/vim-session.vim

"" vim proc
source $XDG_CONFIG_HOME/nvim/plugins/vim-proc.vim

"" themes
source $XDG_CONFIG_HOME/nvim/plugins/themes.vim

"" snippets
source $XDG_CONFIG_HOME/nvim/plugins/snippets.vim

"" search through all
source $XDG_CONFIG_HOME/nvim/plugins/search.vim

"" lsp plugins
source $XDG_CONFIG_HOME/nvim/plugins/lsp.vim

"" lines 
source $XDG_CONFIG_HOME/nvim/plugins/lines.vim

"" language support
source $XDG_CONFIG_HOME/nvim/plugins/languages/languages.vim

"" version control
source $XDG_CONFIG_HOME/nvim/plugins/git.vim

"" file explorer
source $XDG_CONFIG_HOME/nvim/plugins/explorer.vim

call plug#end()


""""""""""""""""""""""""""""""""""""""""""""
"" Settings
""""""""""""""""""""""""""""""""""""""""""""

"" Overall Settings
source $XDG_CONFIG_HOME/nvim/settings/settings.vim


""""""""""""""""""""""""""""""""""""""""""""
"" Mappings
""""""""""""""""""""""""""""""""""""""""""""

"" Key bindings

source $XDG_CONFIG_HOME/nvim/mappings/mappings.vim