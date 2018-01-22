safe_source () {
    if [[ -a $1 ]]; then
        source $1
    fi
}

# Stash your environment variables in ~/.zshrc.local. This means they'll stay out
# of your main dotfiles repository (which may be public, like this one), but
# you'll have access to them in your scripts.

safe_source ~/.zshrc.local

export ZSH_CUSTOM=~/.zsh-custom
# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

plugins=(git z zsh-autosuggestions zsh-syntax-highlighting)
safe_source ~/.util/zsh/host.zsh

source $ZSH/oh-my-zsh.sh

# User configuration

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
else
   export EDITOR='mvim'
fi

if [[ -d "$HOME/miniconda3" ]]; then
#    export PATH=$HOME/miniconda3/bin:$PATH
fi

eval "$(direnv hook zsh)"

if ! type "dircolors" > /dev/null; then
  export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD
else
    eval `dircolors ~/.dir_colors`
fi

if type "hub" > /dev/null; then
    eval "$(hub alias -s)"
fi


alias displaystandard="xrandr --output eDP1 --mode 1680x1050"
alias displaylarge="xrandr --output eDP1 --mode 1920x1200"

if type "rbenv" > /dev/null; then
    eval "$(rbenv init -)"
fi

alias ownfolders="sudo chmod 100755 **/*(/)"
alias ownfiles="sudo chmod 100644 **/*(.)"

alias getbwihosts="curl http://nixons-head.csres.utexas.edu:7979/hosts"

