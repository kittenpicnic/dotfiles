# ══════════════════════════════════════════════════════════════════════════════
# SHORTCUTS
# ══════════════════════════════════════════════════════════════════════════════

# - EDITING --------------------------------------------------------------------

    alias edit="code"

# - CONFIG FILES ---------------------------------------------------------------

    alias configureDotfiles="edit $HOME/.yehnah"
    alias configureGit="edit $HOME/.gitconfig"
    alias configureZshrc="edit $HOME/.yehnah/.zshrc"
    alias configureZshAliases="edit $HOME/.yehnah/.alias.zsh"
    alias configureZshFunctions="edit $HOME/.yehnah/.functions.zsh"
    alias configureP10k="edit $HOME/.yehnah/.p10k.zsh"
    alias configureVim="edit $HOME/.config/nvim/init.vim"
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