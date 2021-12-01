# ══════════════════════════════════════════════════════════════════════════════
# CONSTANTS
# ══════════════════════════════════════════════════════════════════════════════

# - COLORS ---------------------------------------------------------------------

    # RESET
    NC="\033[0m"

    # DEFAULT
    BLACK="\033[0;30m"          # Black
    RED="\033[0;31m"            # Red
    GREEN="\033[0;32m"          # Green
    YELLOW="\033[0;33m"         # Yellow
    BLUE="\033[0;34m"           # Blue
    PURPLE="\033[0;35m"         # Purple
    CYAN="\033[0;36m"           # Cyan
    WHITE="\033[0;37m"          # White

    # BOLD
    BLACK_B="\033[1;30m"        # Black
    RED_B="\033[1;31m"          # Red
    GREEN_B="\033[1;32m"        # Green
    YELLOW_B="\033[1;33m"       # Yellow
    BLUE_B="\033[1;34m"         # Blue
    PURPLE_B="\033[1;35m"       # Purple
    CYAN_B="\033[1;36m"         # Cyan
    WHITE_B="\033[1;37m"        # White

    # UNDERLINED
    BLACK_U="\033[4;30m"        # Black
    RED_U="\033[4;31m"          # Red
    GREEN_U="\033[4;32m"        # Green
    YELLOW_U="\033[4;33m"       # Yellow
    BLUE_U="\033[4;34m"         # Blue
    PURPLE_U="\033[4;35m"       # Purple
    CYAN_U="\033[4;36m"         # Cyan
    WHITE_U="\033[4;37m"        # White

    # BACKGROUND
    BLACK_BG="\033[40m"         # Black
    RED_BG="\033[41m"           # Red
    GREEN_BG="\033[42m"         # Green
    YELLOW_BG="\033[43m"        # Yellow
    BLUE_BG="\033[44m"          # Blue
    PURPLE_BG="\033[45m"        # Purple
    CYAN_BG="\033[46m"          # Cyan
    WHITE_BG="\033[47m"         # White

    # HIGH INTENSITY
    BLACK_I="\033[0;90m"        # Black
    RED_I="\033[0;91m"          # Red
    GREEN_I="\033[0;92m"        # Green
    YELLOW_I="\033[0;93m"       # Yellow
    BLUE_I="\033[0;94m"         # Blue
    PURPLE_I="\033[0;95m"       # Purple
    CYAN_I="\033[0;96m"         # Cyan
    WHITE_I="\033[0;97m"        # White

    # BOLD HIGH INTENSITY
    BLACK_BI="\033[1;90m"       # Black
    RED_BI="\033[1;91m"         # Red
    GREEN_BI="\033[1;92m"       # Green
    YELLOW_BI="\033[1;93m"      # Yellow
    BLUE_BI="\033[1;94m"        # Blue
    PURPLE_BI="\033[1;95m"      # Purple
    CYAN_BI="\033[1;96m"        # Cyan
    WHITE_BI="\033[1;97m"       # White

    # HIGH INTENSITY BG
    BLACK_IBG="\033[0;100m"     # Black
    RED_IBG="\033[0;101m"       # Red
    GREEN_IBG="\033[0;102m"     # Green
    YELLOW_IBG="\033[0;103m"    # Yellow
    BLUE_IBG="\033[0;104m"      # Blue
    PURPLE_IBG="\033[100;95m"   # Purple
    CYAN_IBG="\033[0;106m"      # Cyan
    WHITE_IBG="\033[0;107m"     # White

# ══════════════════════════════════════════════════════════════════════════════
# FUNCTIONS
# ══════════════════════════════════════════════════════════════════════════════

# - ROOT USER / SUDO -----------------------------------------------------------

    ask_for_sudo() {
        printf "${RED}Note: This script uses ${RED_U}sudo${RED} and will require root priviliges.${NC}\n"
        yes_or_no "Do you wish to continue?" && $1
    }

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