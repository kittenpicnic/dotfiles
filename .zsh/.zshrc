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

    source $HOME/.powerlevel10k/powerlevel10k.zsh-theme

# - ZSH CONFIG -----------------------------------------------------------------

    # History
    HISTFILE=$HOME/.zsh_history
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

    # Default command
    # compinit
    # Custom path for zcompdump
    autoload -Uz compinit -d $HOME/.cache/zsh/.zcompdump-$ZSH_VERSION

    export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"

# - P10K VARIABLES -------------------------------------------------------------

    ZLE_RPROMPT_INDENT=0

# - P10K CONFIG ----------------------------------------------------------------

    [[ ! -f $HOME/.dotfiles/.zsh/.p10k.zsh ]] || source $HOME/.dotfiles/.zsh/.p10k.zsh

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

    if [ -d "/usr/local/sbin" ] ; then
        PATH="/usr/local/sbin:$PATH"
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

# - IN ncurses -----------------------------------------------------------------
    
    if [ -d "/usr/local/opt/ncurses/bin" ] ; then
        PATH="/usr/local/opt/ncurses/bin:$PATH"
    fi

# - IN Java --------------------------------------------------------------------
    
    if [ -d "/usr/local/opt/openjdk/bin" ] ; then
        PATH="/usr/local/opt/openjdk/bin:$PATH"
    fi

# - IN Go ----------------------------------------------------------------------
    
    if [ -d "$HOME/go/bin" ] ; then
        PATH="$HOME/go/bin:$PATH"
        export GOPATH=$HOME/go
    fi

# - IN Ruby --------------------------------------------------------------------
    
    if [ -d "$HOME/.rbenv/shims" ] ; then
        PATH="$HOME/.rbenv/shims:$PATH"
    fi

# - IN Haskell -----------------------------------------------------------------
    [ -f "$HOME/.ghcup/env" ] && source "$HOME/.ghcup/env"

# - IN .NET Tools --------------------------------------------------------------

if [ -d "$HOME/.dotnet/tools" ] ; then
    PATH="$HOME/.dotnet/tools:$PATH"
fi

# - IN HAXE

if [ -f "/usr/local/lib/haxe/std" ] ; then
    export HAXE_STD_PATH="/usr/local/lib/haxe/std"
fi

# - IN N (NODE.JS) -------------------------------------------------------------

    # set PATH so it includes binaries from Node.js/n (see http://git.io/n-install-repo)
    export N_PREFIX="$HOME/.n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"

# - RBENV (RUBY) ---------------------------------------------------------------

if [[ "$OSTYPE" == "darwin"* ]]; then
    eval "$(rbenv init -)"
fi

# - IN EMACS -------------------------------------------------------------------

PATH="$HOME/.emacs.d/bin:$PATH"

# ══════════════════════════════════════════════════════════════════════════════
# CUSTOM CONFIGURATION
# ══════════════════════════════════════════════════════════════════════════════

# - PREFERENCES ----------------------------------------------------------------

# Terminal editor of choice
export EDITOR='emacs -nw'

# - CONFIG FILE -----------------------------------------------------------------

    [[ ! -f $HOME/.dotfiles/.zsh/.prelude.zsh ]] || source $HOME/.dotfiles/.zsh/.prelude.zsh

# - ALIAS FILE -----------------------------------------------------------------

    [[ ! -f $HOME/.dotfiles/.zsh/.alias.zsh ]] || source $HOME/.dotfiles/.zsh/.alias.zsh

# - FUNCTION FILE --------------------------------------------------------------

    [[ ! -f $HOME/.dotfiles/.zsh/.functions.zsh ]] || source $HOME/.dotfiles/.zsh/.functions.zsh

# - SCRIPT FILE ----------------------------------------------------------------

    [[ ! -f $HOME/.dotfiles/.zsh/.scripts.zsh ]] || source $HOME/.dotfiles/.zsh/.scripts.zsh

# - HELP FILE ------------------------------------------------------------------

    [[ ! -f $HOME/.dotfiles/.zsh/.help.zsh ]] || source $HOME/.dotfiles/.zsh/.help.zsh
