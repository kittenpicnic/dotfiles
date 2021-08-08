# Config & Dotfiles

An extendable dotfiles config for mac and ubuntu.

These dotfiles are setup to make setting up and maintaining a personal system as effortless as possible. 

Not everything is automated and this readme contains quite a few manual steps to ensure things are installed in the correct order.

## Includes

### Shell

- zsh
- p10k
- tmux

### Languages

- Javascript
- Ruby
- Rust

### Editing

- Emacs ([Doom](https://github.com/hlissner/doom-emacs))
- VSCode

### Aliases

Mix of useful aliases for common system commands.

### Functions

Mix of useful functions for common tasks.

### Prelude

Ready-to-use constants and functions to ease the stress of shell scripting.


### Scripts

Custom scripts to perform more complex tasks.

---

Once everything is set up, you can type:

```sh
help
```

in your terminal at any time to view the list of functions etc

---

## Shell Setup

Please read and understand the following instructions and scripts carefully before using them.

### Pre-Config

#### Install **homebrew (mac)**

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

#### Install **zsh**

```sh
sudo apt install zsh
# or
brew install zsh
```

#### Install **p10k**
```sh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.powerlevel10k
```

#### Clone this repo to `~/.dotfiles`

```sh
git clone git@github.com:pyxylyze/dotfiles.git .dotfiles
```

#### Add **`.zshrc`**

```
[[ ! -f ~/.dotfiles/.zshrc ]] || source ~/.dotfiles/.zshrc
```


#### Create a cache directory for **zsh**

```sh
$ mkdir ~/.cache/zsh
```

#### Hush That Login

The `.hushlogin` file is an empty file that goes in your home (`~`) directory to silence the login text that appears at the start of every shell session.

### Config Setup

Now you can run:

```sh
setupGit
```

Note: Make **sure** to add your own git name and email in `.gitconfig`

```sh
installDependencies
```

and to update at any time run:

```sh
updateDependencies
```

### Other Setup

#### Software

##### VSCode

```sh
brew install --cask vscode
```

##### Firefox

```sh
brew install --cask firefox
```

#### Nerd Font

I use the [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts) version of [Iosevka](https://typeof.net/Iosevka/), install it with homebrew via:

```sh
brew tap homebrew/cask-fonts
brew install --cask font-iosevka-nerd-font
```

#### iTerm2

##### Font

Iosevka Nerd Font Mono - Oblique

##### Colors
I use the "Framer" color scheme from [iterm2colorschemes](https://iterm2colorschemes.com/)

##### Tmux
In the **Preferences -> Profile -> General -> Send text at start** field:

```
tmux attach -t main || tmux new -s main
```
or with `tmuxp`
```
tmux attach -t main || tmuxp load main
```

---

## Creating a script

Scripts should include the prelude files in order to have access to global
constants and functions.

```sh
source "$(dirname "$0")/prelude"
```