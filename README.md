# Nick Walker's dotfiles

* Aliases
* ZSH and terminal configurations
* tmux and editor configurations 

## Installation

Clone with `--recursive`  into `~/dotfiles`. Install [rcm](https://github.com/thoughtbot/rcm).

### macOS

[Install Homebrew](https://brew.sh).

    brew tap thoughtbot/formulae
    brew install direnv rcm tmux wget youtube-dl hub tree asciinema ripgrep gnupg pinentry-mac rbenv npm
    brew cask install anki betterzip iterm2 qlmarkdown tunnelblick qlstephen qlimagesize qlcolorcode

Create an `~/.rcrc` file with `HOSTNAME` configured, then `mkrc` it.

Finally `rcup`.

### Ubuntu

Follow the instructions to get [asciienma](https://asciinema.org/docs/installation)
    
    sudo apt-get install tree

Then `rcup`

## Per-host Configuration

Make changes to the dotfile, then use

    mkrc -o .file
