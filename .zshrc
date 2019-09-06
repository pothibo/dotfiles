autoload -U colors
colors
autoload -U promptinit; promptinit
autoload -U compinit; compinit

for file in ~/.zsh/*.zsh; do
  source "$file"
done

PROMPT="%{$fg[cyan]%}%n%{$reset_color%}:%{$fg[magenta]%}%~%{$reset_color%} %# "
RPS1="\$vcs_info_msg_0_"

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

if [ -f ~/Develop ]; then
  export GOPATH="$HOME/Develop/go"
fi

export PATH="$HOME/.fastlane/bin:$PATH"
export PATH="$HOME/.bin:$PATH"
export PATH="$HOME/.yarn/bin:$PATH"
export PATH="/usr/local/bin:$PATH"

export FZF_DEFAULT_COMMAND='
(git ls-tree -r --name-only HEAD ||
  find . -path "*/\.*" -prune -o -type f -print -o -type l -print |
  sed s/^..//) 2> /dev/null'

if [ -f ~/.zshrc.usr ]; then
  source ~/.zshrc.usr
fi

