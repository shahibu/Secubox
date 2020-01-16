#!/bin/sh

# ===================================================================
# Check if the program run as a root
# ===================================================================

check_root(){

# Make sure only root can run this script
        if [ $(id -u) -ne 0 ]; then
          echo "\n$RED[!] This script must be run as root$ENDC\n" >&2
          exit 1
        fi
}