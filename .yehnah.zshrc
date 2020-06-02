# ══════════════════════════════════════════════════════════════════════════════
# SHELL CONFIG
# ══════════════════════════════════════════════════════════════════════════════

# - P10K INSTANT PROMPT --------------------------------------------------------

    # Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
    # Initialization code that may require console input (password prompts, [y/n]
    # confirmations, etc.) must go above this block; everything else may go below.
    if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
    fi

# - ZSH THEME (P10K) -----------------------------------------------------------

    source ~/powerlevel10k/powerlevel10k.zsh-theme

# - ZSH CONFIG -----------------------------------------------------------------

    # History
    HISTFILE=~/.zsh_history
    HISTSIZE=1000
    SAVEHIST=1000

    # Unset implicit `cd`
    unsetopt autocd
    bindkey -e

    # Terminal settings
    export TERM=xterm-256color
    ulimit -n 2048

# - ZSH COMPLETIONS ------------------------------------------------------------

    # Set fpath to find functions
    fpath=(/usr/local/share/zsh-completions $fpath)
    zstyle :compinstall filename "$HOME/.zshrc"

    autoload -Uz compinit -d $HOME/.cache/zsh/.zcompdump-$ZSH_VERSION
    # Default command
    # compinit
    # Custom path for zcompdump
    compinit -d ~/.cache/zsh/.zcompdump-$ZSH_VERSION

# - P10K CONFIG ----------------------------------------------------------------

    [[ ! -f $HOME/.yehnah/.yehnah.p10k.zsh ]] || source $HOME/.yehnah/.yehnah.p10k.zsh

# - P10K VARIABLES -------------------------------------------------------------

    ZLE_RPROMPT_INDENT=0

# ══════════════════════════════════════════════════════════════════════════════
# PATH MODIFICATIONS (could go in ~/.zprofile)
# ══════════════════════════════════════════════════════════════════════════════

# - IN HOME --------------------------------------------------------------------

    # set PATH so it includes user's private bin if it exists
    if [ -d "$HOME/bin" ] ; then
        PATH="$HOME/bin:$PATH"
    fi

# - IN LOCAL -------------------------------------------------------------------

    # set PATH so it includes user's private bin if it exists
    if [ -d "$HOME/.local/bin" ] ; then
        PATH="$HOME/.local/bin:$PATH"
    fi

# - IN CARGO -------------------------------------------------------------------

    # set PATH so it includes binaries from Rust/Cargo
    if [ -d "$HOME/.cargo/bin" ] ; then
        PATH="$HOME/.cargo/bin:$PATH"
    fi

# - IN YARN --------------------------------------------------------------------

    if [ -d "$HOME/.yarn/bin" ] ; then
        PATH="$HOME/.yarn/bin:$PATH"
    fi

# - IN N (NODE.JS) -------------------------------------------------------------

    # set PATH so it includes binaries from Node.js/n (see http://git.io/n-install-repo)
    export N_PREFIX="$HOME/.n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"


# ══════════════════════════════════════════════════════════════════════════════
# CUSTOM CONFIGURATION
# ══════════════════════════════════════════════════════════════════════════════

# - PREFERENCES ----------------------------------------------------------------

export EDITOR='emacs'

# - CONFIG FILE -----------------------------------------------------------------

    [[ ! -f $HOME/.yehnah/.yehnah.prelude.zsh ]] || source $HOME/.yehnah/.yehnah.prelude.zsh

# - ALIAS FILE -----------------------------------------------------------------

    [[ ! -f $HOME/.yehnah/.yehnah.alias.zsh ]] || source $HOME/.yehnah/.yehnah.alias.zsh

# - FUNCTION FILE --------------------------------------------------------------

    [[ ! -f $HOME/.yehnah/.yehnah.functions.zsh ]] || source $HOME/.yehnah/.yehnah.functions.zsh

# - SCRIPT FILE ----------------------------------------------------------------

    [[ ! -f $HOME/.yehnah/.yehnah.scripts.zsh ]] || source $HOME/.yehnah/.yehnah.scripts.zsh