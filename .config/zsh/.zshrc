# ══════════════════════════════════════════════════════════════════════════════
# SHELL CONFIG
# ══════════════════════════════════════════════════════════════════════════════

# - ZSH COMPLETIONS ------------------------------------------------------------

    # Set fpath to find functions
    fpath=(/usr/local/share/zsh-completions $fpath)
    zstyle :compinstall filename "$HOME/.zshrc"

    # Default command
    # compinit
    # Custom path for zcompdump
    autoload -Uz compinit -d $HOME/.cache/zsh/.zcompdump-$ZSH_VERSION

# ══════════════════════════════════════════════════════════════════════════════
# CUSTOM CONFIGURATION
# ══════════════════════════════════════════════════════════════════════════════

# - PREFERENCES ----------------------------------------------------------------

# Terminal editor of choice
export EDITOR='emacs -nw'
export ZSH_CONFIG_PATH=$(dirname $(realpath $0))

# - CONFIG FILE -----------------------------------------------------------------

    [[ ! -f $ZSH_CONFIG_PATH/.prelude.zsh ]] || source $ZSH_CONFIG_PATH/.prelude.zsh

# - PATH FILE -----------------------------------------------------------------

    [[ ! -f $ZSH_CONFIG_PATH/.path.zsh ]] || source $ZSH_CONFIG_PATH/.path.zsh

# # - ALIAS FILE -----------------------------------------------------------------

    [[ ! -f $ZSH_CONFIG_PATH/.alias.zsh ]] || source $ZSH_CONFIG_PATH/.alias.zsh

# # - SCRIPT FILE ----------------------------------------------------------------

    [[ ! -f $ZSH_CONFIG_PATH/.scripts.zsh ]] || source $ZSH_CONFIG_PATH/.scripts.zsh