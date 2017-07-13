autoload -U colors
colors
autoload -U promptinit; promptinit
autoload -U compinit; compinit

for file in ~/.zsh/*.zsh; do
  source "$file"
done

PROMPT="%{$fg[cyan]%}%n%{$reset_color%}:%{$fg[magenta]%}%~%{$reset_color%} %# "
RPS1="\$vcs_info_msg_0_"

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

[ -d ~/Develop ] || mkdir ~/Develop

export GOPATH="$HOME/Develop/go"
PATH="/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:$GOPATH/bin:$PATH"

# added by travis gem
[ -f /Users/pothibo/.travis/travis.sh ] && source /Users/pothibo/.travis/travis.sh

# Fastlane
export PATH="$HOME/.fastlane/bin:$PATH"

export PATH="$HOME/.yarn/bin:$PATH"
export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"
