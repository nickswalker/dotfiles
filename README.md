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

Finally 

    rcup -x README.md -x LICENSE -x uw

### Ubuntu

Follow the instructions to get [asciienma](https://asciinema.org/docs/installation)
    
    sudo apt-get install tree

Then

    rcup -x README.md -x LICENSE -x uw

## Per-host Configuration

Make changes to the dotfile, then use

    mkrc -o .file

## Additional Machine Configuration

### macOS

* Sign into accounts in System Preferences
* Airdrop keys, VPN config from previous machine.
* Restore 1Password, Pixelmator, other apps from App Store purchases
* Install RescueTime
