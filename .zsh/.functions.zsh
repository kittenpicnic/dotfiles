# ══════════════════════════════════════════════════════════════════════════════
# UTILITIES
# ══════════════════════════════════════════════════════════════════════════════

# - RAM DISK -------------------------------------------------------------------
#   Creates a RAM disk of the specified size in GB

    ram_disk() {
        if [ ! -f $1 ] ; then
            echo "Attempting to create RAMDisk at /media/$1 with size 2048MB"
            sudo mkdir -p /media/$1
            sudo mount -t tmpfs --options size=2048M tmpfs /media/$1/
            echo "Note: You can also use the directory /dev/shm as temporary RAM storage"
        else
            echo "You must name your RAMDisk e.g ram_disk ramdisk"
        fi
    }

# - SLURP ----------------------------------------------------------------------
#   Read a file into a variable

    slurp() {
        value=$(<$1)
        echo $value
    }

# - COLOR MAP ------------------------------------------------------------------
# Output a map of available colors

    color_map() {
        for i in {0..255}; do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$'\n'}; done
    }