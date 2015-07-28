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

# No sound, does anyone wants that?
setopt nobeep

export EDITOR=vim

bindkey '^W' emacs-forward-word
bindkey '^B' emacs-backward-word
bindkey '^D' backward-delete-word

if [[ -x $(which boot2docker) ]]; then
  eval $(boot2docker shellinit 2>/dev/null)
fi

PATH="/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:$PATH"
export GOPATH='/Users/pothibo/Develop/go'
