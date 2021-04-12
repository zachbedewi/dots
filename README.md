# Zach's Dotfiles

**NOTE**: These dotfiles are used for my personal machine running MacOS, and as 
a result they may contain settings and configurations that you won't like. Prior 
to installation, look through this repository and see what settings you might 
like to change.

## Prerequisites
You must have [Homebrew](https://brew.sh/) in order to fully complete 
the installation. Install homebrew:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

If you wish to clone this repository with git:

```bash
brew install git
```

## Installation
Clone this repository into any directory on your machine:

```bash
git clone https://github.com/zachbedewi/dots.git
```

Install dependencies (along with other useful packages and apps):

```bash
brew bundle
```

These dotfiles are deployed using [GNU Stow](https://www.gnu.org/software/stow/), 
which allows each package to be installed separately. To install a package (zsh
for example), run the following command:

```bash
stow -t ~ zsh
```

In order to install other packages, use the above command replacing `zsh` with 
the desired package name. (**Note**: the name of each package is the name of the 
corresponding parent directory in the dots folder).

## Inspiration

* Mathias Bynen's [dotfiles repository](https://github.com/mathiasbynens/dotfiles)
* Elenapan's [dotfiles repository](https://github.com/elenapan/dotfiles)
* Luke Smith's [dotfiles repository](https://github.com/LukeSmithxyz/voidrice)
* Christian Chiarulli's [neovim repository](https://github.com/ChristianChiarulli/nvim)
* [r/unixporn](https://www.reddit.com/r/unixporn/)
