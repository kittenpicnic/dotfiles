# ══════════════════════════════════════════════════════════════════════════════
# PATH
# ══════════════════════════════════════════════════════════════════════════════\

# - IN N (NODE.JS) -------------------------------------------------------------

    export N_PREFIX="$HOME/.n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"

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

    if [ -d "/usr/bin" ] ; then
        PATH="/usr/bin:$PATH"
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

# - IN EMACS -------------------------------------------------------------------

    if [ -d "$HOME/.emacs.d/bin" ] ; then
        PATH="$HOME/.emacs.d/bin:$PATH"
    fi