# Config & Dotfiles

## Includes

### Shell

- zsh
- p10k

### Languages

- Rust
- Javascript

### Prelude

Ready-to-use constants and functions to ease the stress of shell scripting.

### Functions

Mix of useful functions for common tasks.

### Aliases

Mix of useful aliases for common system commands.

### Scripts

Custom scripts to perform more complex tasks.

---

## Shell Setup

### Install **zsh**

```
sudo apt install zsh
```

### Add **`.zshrc`**

```
[[ ! -f ~/.yehnah/.yehnah.zshrc ]] || source ~/.yehnah/.yehnah.zshrc
```

### Create a cache directory for **zsh**

```sh
$ mkdir ~/.cache/zsh
```

### p10k

TODO: Add p10k config instructions

---

## Creating a script

Scripts should include the prelude files in order to have access to global
constants and functions.

```sh
source "$(dirname "$0")/prelude"
```