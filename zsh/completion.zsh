# customize zsh completion

# use cache for increased speeds
zstyle ':completion:*' use-cache on

# case insensitive
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# menu for large list
zstyle ':completion:*:default' menu 'select=0'

# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending

# kill process completion
zstyle ':completion:*:kill:*' menu yes select
zstyle ':completion:*:kill:*' force-list always
zstyle ':completion:*:processes' command 'ps x -o pid,pcpu,tt,args'

# ignore non-text files for e, vi(m), vim
zstyle ':completion:*:(e|vi|vim|mvim):*' ignored-patterns '*.(o|a|so|aux|dvi|log|swp|fig|bib|bbl|blg|bst|fls|fdb_latexmk|idx|ind|out|toc|class|pdf|ps|eps|pyc|jpg|jpeg|tiff|png|gif)'
