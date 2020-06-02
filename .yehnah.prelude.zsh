# ══════════════════════════════════════════════════════════════════════════════
# CONSTANTS
# ══════════════════════════════════════════════════════════════════════════════

# - COLORS ---------------------------------------------------------------------

    RED='\033[0;31m'
    GREEN='\033[0;32m'
    NC='\033[0m'

# ══════════════════════════════════════════════════════════════════════════════
# FUNCTIONS
# ══════════════════════════════════════════════════════════════════════════════

# - ROOT USER / SUDO -----------------------------------------------------------

    # is_root() {
    #     # [ "$UID" -ne 0 ] Other method to check for root user
    #     [[ ! -f $SUDO_USER ]] && return false || return true
    # }

    # ensure_root() {
    #     [[ ! -f $SUDO_USER ]] && (>&2 echo "You must run this function with root priviliges.") && return 1 2> /dev/null || exit 1
    # }
    # ensureRoot || return ensureRoot

# - ASK FOR PERMISSION ---------------------------------------------------------

    yes_or_no() {
        while true; do
            read -p "$* [y/n]: " yn
            case $yn in
                [Yy]*) return 0  ;;
                [Nn]*) echo "Aborted" ; return  1 ;;
            esac
        done
    }