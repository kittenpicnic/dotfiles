# ══════════════════════════════════════════════════════════════════════════════
# CONSTANTS
# ══════════════════════════════════════════════════════════════════════════════

# - COLORS ---------------------------------------------------------------------

    # RED='\033[0;31m'
    # GREEN='\033[0;32m'
    # NC='\033[0m'

    # RESET
    NC="\033[0m"

    # DEFAULT
    BLACK="\033[0;30m"        # Black
    RED="\033[0;31m"          # Red
    GREEN="\033[0;32m"        # Green
    YELLOW="\033[0;33m"       # Yellow
    BLUE="\033[0;34m"         # Blue
    PURPLE="\033[0;35m"       # Purple
    CYAN="\033[0;36m"         # Cyan
    WHITE="\033[0;37m"        # White

    # BOLD
    BLACK_B="\033[1;30m"        # Black
    RED_B="\033[1;31m"          # Red
    GREEN_B="\033[1;32m"        # Green
    YELLOW_B="\033[1;33m"       # Yellow
    BLUE_B="\033[1;34m"         # Blue
    PURPLE_B="\033[1;35m"       # Purple
    CYAN_B="\033[1;36m"         # Cyan
    WHITE_B="\033[1;37m"        # White

    BLACK_U="\033[4;30m"        # Black
    RED_U="\033[4;31m"          # Red
    GREEN_U="\033[4;32m"        # Green
    YELLOW_U="\033[4;33m"       # Yellow
    BLUE_U="\033[4;34m"         # Blue
    PURPLE_U="\033[4;35m"       # Purple
    CYAN_U="\033[4;36m"         # Cyan
    WHITE_U="\033[4;37m"        # White

    # # Bold
    # BBlack="\[\033[1;30m\]"       # Black
    # BRed="\[\033[1;31m\]"         # Red
    # BGreen="\[\033[1;32m\]"       # Green
    # BYellow="\[\033[1;33m\]"      # Yellow
    # BBlue="\[\033[1;34m\]"        # Blue
    # BPurple="\[\033[1;35m\]"      # Purple
    # BCyan="\[\033[1;36m\]"        # Cyan
    # BWhite="\[\033[1;37m\]"       # White

    # # Underline
    # UBlack="\[\033[4;30m\]"       # Black
    # URed="\[\033[4;31m\]"         # Red
    # UGreen="\[\033[4;32m\]"       # Green
    # UYellow="\[\033[4;33m\]"      # Yellow
    # UBlue="\[\033[4;34m\]"        # Blue
    # UPurple="\[\033[4;35m\]"      # Purple
    # UCyan="\[\033[4;36m\]"        # Cyan
    # UWhite="\[\033[4;37m\]"       # White

    # # Background
    # On_Black="\[\033[40m\]"       # Black
    # On_Red="\[\033[41m\]"         # Red
    # On_Green="\[\033[42m\]"       # Green
    # On_Yellow="\[\033[43m\]"      # Yellow
    # On_Blue="\[\033[44m\]"        # Blue
    # On_Purple="\[\033[45m\]"      # Purple
    # On_Cyan="\[\033[46m\]"        # Cyan
    # On_White="\[\033[47m\]"       # White

    # # High Intensty
    # IBlack="\[\033[0;90m\]"       # Black
    # IRed="\[\033[0;91m\]"         # Red
    # IGreen="\[\033[0;92m\]"       # Green
    # IYellow="\[\033[0;93m\]"      # Yellow
    # IBlue="\[\033[0;94m\]"        # Blue
    # IPurple="\[\033[0;95m\]"      # Purple
    # ICyan="\[\033[0;96m\]"        # Cyan
    # IWhite="\[\033[0;97m\]"       # White

    # # Bold High Intensty
    # BIBlack="\[\033[1;90m\]"      # Black
    # BIRed="\[\033[1;91m\]"        # Red
    # BIGreen="\[\033[1;92m\]"      # Green
    # BIYellow="\[\033[1;93m\]"     # Yellow
    # BIBlue="\[\033[1;94m\]"       # Blue
    # BIPurple="\[\033[1;95m\]"     # Purple
    # BICyan="\[\033[1;96m\]"       # Cyan
    # BIWhite="\[\033[1;97m\]"      # White

    # # High Intensty backgrounds
    # On_IBlack="\[\033[0;100m\]"   # Black
    # On_IRed="\[\033[0;101m\]"     # Red
    # On_IGreen="\[\033[0;102m\]"   # Green
    # On_IYellow="\[\033[0;103m\]"  # Yellow
    # On_IBlue="\[\033[0;104m\]"    # Blue
    # On_IPurple="\[\033[10;95m\]"  # Purple
    # On_ICyan="\[\033[0;106m\]"    # Cyan
    # On_IWhite="\[\033[0;107m\]"   # White

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