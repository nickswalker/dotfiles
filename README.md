# Nick Walker's dotfiles

* Aliases
* ZSH and terminal configurations
* tmux and editor configurations 

## Installation

Clone with `--recursive`  into `~/.dotfiles`. Install [rcm](https://github.com/thoughtbot/rcm).

    git clone --recursive <...> ~/.dotfiles

### macOS

[Install Homebrew](https://brew.sh).

[Install Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh).

Then

    brew tap thoughtbot/formulae
    brew install asciinema direnv gnupg hub rcm tmux tree rbenv ripgrep pinentry-mac npm wget youtube-dl
    brew cask install anki betterzip iterm2 qlimagesize qlcolorcode qlmarkdown qlstephen tunnelblick

Create an `~/.rcrc` file with `HOSTNAME` configured

    echo HOSTNAME=<hostname> > ~/.rcrc

Then `mkrc` it.

Finally 

    rcup -x README.md -x LICENSE -x uw

### Ubuntu

[Install Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh).

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
