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