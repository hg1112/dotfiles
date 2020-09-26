"" themes
source $XDG_CONFIG_HOME/nvim/mappings/themes.vim

"" abbreviations
source $XDG_CONFIG_HOME/nvim/mappings/abbreviations.vim

"" Search 
source $XDG_CONFIG_HOME/nvim/mappings/search.vim

"" Git
source $XDG_CONFIG_HOME/nvim/mappings/git.vim

"" Lsp
source $XDG_CONFIG_HOME/nvim/mappings/lsp.vim

"" Explorer
source $XDG_CONFIG_HOME/nvim/mappings/explorer.vim

"" Commands 
source $XDG_CONFIG_HOME/nvim/mappings/commands.vim

"" lines
source $XDG_CONFIG_HOME/nvim/mappings/lines.vim

"" session management
source $XDG_CONFIG_HOME/nvim/mappings/session.vim

"" snippets
source $XDG_CONFIG_HOME/nvim/mappings/snippets.vim

"" language mappings
source $XDG_CONFIG_HOME/nvim/mappings/languages/languages.vim

"" other
source $XDG_CONFIG_HOME/nvim/mappings/other.vim

"" Include user's local vim config
if filereadable(expand("~/.config/nvim/local_init.vim"))
  source ~/.config/nvim/local_init.vim
endif

