# ══════════════════════════════════════════════════════════════════════════════
# SHORTCUTS
# ══════════════════════════════════════════════════════════════════════════════

# - EDITING --------------------------------------------------------------------

    alias edit="emacs -nw"
    alias ls="exa"

# ══════════════════════════════════════════════════════════════════════════════
# COMMANDS
# ══════════════════════════════════════════════════════════════════════════════

# - ZSH ------------------------------------------------------------------------

    alias zshHistoryClean="rm $HOME/.zsh_history"

# - HTTP -----------------------------------------------------------------------

    alias httpGetStatus="curl -LI -o /dev/null -w '%{http_code}\n' -s"

# - JAVASCRIPT -----------------------------------------------------------------

    alias nodeRemoveModules="sudo find . -name 'node_modules' -type d -prune -exec rm -rf '{}' +"
    alias nodeListGlobals="npm list -g --depth 0; yarn global list --depth 0"

# - GIT ------------------------------------------------------------------------

    alias gitDisplayTree='git log --graph --abbrev-commit --decorate --date=relative --format=format:'\''%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)'\'' --all'