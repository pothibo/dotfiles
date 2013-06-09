setopt PROMPT_SUBST
autoload -U promptinit; promptinit
autoload -U colors; colors
autoload -U compinit; compinit

PROMPT="%{$fg[cyan]%}%n%{$reset_color%} at %{$fg[green]%}%m%{$reset_color%} in %{$fg[magenta]%}%~%{$reset_color%}
%# "

RPS1='$(git_super_status)'

# Load RBEnv
export RBENV_ROOT=/usr/local/var/rbenv

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
source /usr/local/opt/rbenv/completions/rbenv.zsh

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
# GNU Screen sets -o vi if EDITOR=vi, so we have to force it back. What the
# hell, GNU?
set -o emacs

autoload -U edit-command-line
zle -N edit-command-line
bindkey '\C-x\C-e' edit-command-line

export WORDCHARS='*?[]~&;!$%^<>'

export ACK_COLOR_MATCH='red'

# ACTUAL CUSTOMIZATION OH NOES!
gd() { git diff $* | view -; }
gdc() { gd --cached $*; }
function cdf() { cd *$1*/ } # stolen from @topfunky

python_module_dir () {
    echo "$(python -c "import os.path as _, ${1}; \
        print _.dirname(_.realpath(${1}.__file__[:-1]))"
        )"
}

function up()
{
    if [ "$1" != "" -a "$2" != "" ]; then
        local DIR=$1
        local TARGET=$2
    elif [ "$1" ]; then
        local DIR=$PWD
        local TARGET=$1
    fi
    while [ ! -e $DIR/$TARGET -a $DIR != "/" ]; do
        DIR=$(dirname $DIR)
    done
    test $DIR != "/" && echo $DIR/$TARGET
}

