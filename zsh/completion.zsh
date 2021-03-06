# customize zsh completion

# case insensitive
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending

# other settings
zstyle ':completion:*' menu select=2
zstyle ':completion::complete:*' use-cache 1

# kill process completion
zstyle ':completion:*:kill:*' menu yes select
zstyle ':completion:*:kill:*' force-list always
zstyle ':completion:*:processes' command 'ps x -o pid,pcpu,tt,args'

# ignore non-text files for e, vi(m), vim
zstyle ':completion:*:(e|vi|vim|mvim):*' ignored-patterns '*.(o|a|so|aux|dvi|log|swp|spl|fig|bib|bbl|blg|bst|fls|fdb_latexmk|idx|ind|out|toc|thm|lot|lof|class|nlo|nls|snm|nav|synctex.gz|vrb|pdf|ps|eps|pyc|jpg|jpeg|tiff|png|gif)'
