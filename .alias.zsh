# ══════════════════════════════════════════════════════════════════════════════
# SHORTCUTS
# ══════════════════════════════════════════════════════════════════════════════

# - EDITING --------------------------------------------------------------------

    alias edit="emacs -nw"
    alias ls="exa"

# - CONFIG FILES ---------------------------------------------------------------

    alias configureDotfiles="edit $HOME/.dotfiles"
    alias configureGit="edit $HOME/.gitconfig"
    alias configureZshrc="edit $HOME/.dotfiles/.zshrc"
    alias configureZshAliases="edit $HOME/.dotfiles/.alias.zsh"
    alias configureZshFunctions="edit $HOME/.dotfiles/.functions.zsh"
    alias configureP10k="edit $HOME/.dotfiles/.p10k.zsh"
    alias configureEditor="edit $HOME/.doom.d"
    alias configureTmux="edit $HOME/.tmux.conf.local"

# ══════════════════════════════════════════════════════════════════════════════
# COMMANDS
# ══════════════════════════════════════════════════════════════════════════════

# - ZSH ------------------------------------------------------------------------

    alias zshHistoryClean="rm $HOME/.zsh_history"

# - PORTS ----------------------------------------------------------------------

    alias portsShowNode="sudo netstat -lp | grep /node"
    alias portsGrep="sudo netstat -lp | grep "
    alias portsShowLocal="sudo netstat -lp | grep '[::]:*'"
    alias portsStop="kill -9"

# - HTTP -----------------------------------------------------------------------

    alias httpGetStatus="curl -LI -o /dev/null -w '%{http_code}\n' -s"

# - JAVASCRIPT -----------------------------------------------------------------

    alias nodeRemoveModules="sudo find . -name 'node_modules' -type d -prune -exec rm -rf '{}' +"
    alias nodeListGlobals="npm list -g --depth 0; yarn global list --depth 0"

# - GIT ------------------------------------------------------------------------

    alias gitDisplayTree='git log --graph --abbrev-commit --decorate --date=relative --format=format:'\''%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)'\'' --all'