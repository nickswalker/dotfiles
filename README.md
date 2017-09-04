# Nick Walker's dotfiles

* Aliases
* ZSH and terminal configurations
* tmux and editor configurations 

## Installation

Clone with `--recursive`  into `~/dotfiles`. Install [rcm](https://github.com/thoughtbot/rcm), then `rcup`.

### macOS

[Install Homebrew](https://brew.sh).

    brew install direnv rcm tmux wget youtube-dl hub tree
    brew cask install iterm2

### Ubuntu

    sudo apt-get install tree

## Per-host Configuration

Make changes to the dotfile, then use

    mkrc -o .file
