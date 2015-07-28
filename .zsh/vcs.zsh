autoload -Uz vcs_info
precmd () { vcs_info }
setopt prompt_subst
zstyle ':vcs_info:git*' formats "%{$fg[grey]%}%s:%{$fg[blue]%}%b%{$reset_color%}%m%u%c%{$reset_color%} "
