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

Create an `~/.rcrc` file with `HOSTNAME` configured

    echo HOSTNAME=<hostname> > ~/.rcrc

Then `mkrc` it.

Finally 

    rcup -x README.md -x LICENSE -x uw -x scripts

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

* Install development fonts (Operator, Input)
* Setup eduroam

### macOS

* Sign into accounts in System Preferences
* Airdrop keys, VPN config from previous machine.
* Restore Cinch, 1Password, Pixelmator, other apps from App Store purchases
* Point iTerm to dotfile preferences

### Ubuntu

* Migrate keys
* Install ROS
* Install Chrome
* Install [Solarized dark terminal theme](https://github.com/Anthony25/gnome-terminal-colors-solarized)
* Install slack
* Install caffeine
