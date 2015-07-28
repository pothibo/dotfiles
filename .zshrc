autoload -U colors
colors
autoload -U promptinit; promptinit
autoload -U compinit; compinit

PROMPT="%{$fg[cyan]%}%n%{$reset_color%}:%{$fg[magenta]%}%~%{$reset_color%} %# "

if [ -f ~/.zshrc.usr ]; then
  source ~/.zshrc.usr
fi

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Unbreak broken, non-colored terminal
export TERM='xterm-color'
alias ls='ls -G'
alias ll='ls -lG'
alias duh='du -csh'
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
export GREP_OPTIONS="--color"

# Unbreak history
export HISTSIZE=100000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE

# No sound, does anyone wants that?
setopt nobeep

export EDITOR=vim

autoload -U edit-command-line
zle -N edit-command-line
bindkey '\C-x\C-e' edit-command-line

bindkey '^W' emacs-forward-word
bindkey '^B' emacs-backward-word
bindkey '^D' backward-delete-word

export WORDCHARS='*?[]~&;!$%^<>'

export ACK_COLOR_MATCH='red'

# ACTUAL CUSTOMIZATION OH NOES!
gd() { git diff $* | view -; }
gdc() { gd --cached $*; }
function cdf() { cd *$1*/ } # stolen from @topfunky

if [[ -x $(which boot2docker) ]]; then
  eval $(boot2docker shellinit 2>/dev/null)
fi

PATH="/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:$PATH"
export GOPATH='/Users/pothibo/Develop/go'
